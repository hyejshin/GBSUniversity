package com.ibm.gbs.gbs_cai_web.controllers;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.openstack4j.api.storage.ObjectStorageService;
import org.openstack4j.model.common.DLPayload;
import org.openstack4j.model.common.Payload;
import org.openstack4j.model.storage.object.SwiftObject;
import org.openstack4j.model.storage.object.options.ObjectPutOptions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ibm.gbs.gbs_cai_web.common.FileUtils;
import com.ibm.gbs.gbs_cai_web.service.QnaBoardService;
import com.ibm.gbs.gbs_cai_web.vo.FileVO;
import com.ibm.gbs.gbs_cai_web.vo.QnaBoardVO;

@Controller
public class QnaBoardController {
	private static final Logger logger = Logger.getLogger(QnaBoardController.class);
	
	@Autowired
	private QnaBoardService qnaboardService;
	
	 @Autowired
	 FileVO filevo;
	
	FileUtils fileUtils = new FileUtils();
	
	@RequestMapping("/listqnaboard")
	public String listqnaboard(Model model) throws Exception {
		
		model.addAttribute("list", qnaboardService.getQnAList());
		
		return "listqnaboard";
	}
	
	@RequestMapping("/viewqnaboard")
	public String viewqnaboard(Model model, @RequestParam("idx")int idx) throws Exception {
		BasicConfigurator.configure();
		QnaBoardVO vo = qnaboardService.getQnA(idx);
		
		logger.info("Title : "+vo.getTitle()+" Content : "+vo.getContent()+" file_Id : "+vo.getFile_id());
		
		model.addAttribute("vo", vo);
		qnaboardService.increaseVisit(idx, vo.getCount() + 1);
		model.addAttribute("list", qnaboardService.getQnAComment(idx));
		
		return "viewqnaboard";
	}
	
	@RequestMapping("/addqnaboardView")
	public String addqnaboardView(Model model) {
		
		return "addqnaboard";
	}
	
	@RequestMapping("/addqna")
	public String addQnA(Model model, QnaBoardVO vo, @RequestParam MultipartFile file) throws Exception {
		BasicConfigurator.configure();
				
		String fileNm = file.getOriginalFilename();
		logger.info("FileNm : "+fileNm);
		
		if( fileNm != null) { // FIXME 모듈화할 수 있지 않을 까 고민해보자..
			
			ObjectStorageService objectStorage = fileUtils.authenObjectStorageService();
			String containerName = "gbs_cai_file"; 
			
			String mimeType = file.getContentType();				
			ObjectPutOptions mimetypeOption = ObjectPutOptions.create().contentType(mimeType);				
						
			filevo = new FileVO(fileNm);
			
			qnaboardService.addQnA(vo);
			int tempBoardId = vo.getIdx(); 
			String board_id = Integer.toString(tempBoardId);
			filevo.setFile_id(board_id);
			qnaboardService.addFile(filevo);
						
			try {							
				InputStream fileStream = file.getInputStream();
				Payload<InputStream> payload = new PayloadClass(fileStream);
				objectStorage.objects().put(containerName, fileNm, payload, mimetypeOption); // Object Storage 컨테이너에 파일 적재
							
			} catch (Exception e) {
				logger.error("Fail stored file in ObjectStorage.", e);
			}			
		}
		
		
		return "redirect:listqnaboard";
	}
	
	@RequestMapping("/addqnacomment")
	public String addQnAComment(Model model, QnaBoardVO vo, @RequestParam("idx")int idx) throws Exception {
		
		vo.setRef(idx);
		qnaboardService.addQnA(vo);
		
		return "redirect:viewqnaboard?idx="+idx;
	}
	
	@RequestMapping("/updateqnaboardView")
	public String updateqnaboardView(Model model, @RequestParam("idx")int idx) throws Exception {
		BasicConfigurator.configure();
		
		QnaBoardVO vo = qnaboardService.getQnA(idx);
		logger.info("Title : "+vo.getTitle()+" Content : "+vo.getContent()+" file_Id : "+vo.getFile_id());
		
		model.addAttribute("vo", vo);
		
		return "updateqnaboard";
	}
	
	@RequestMapping("/updateqna")
	public String updateQnA(Model model, QnaBoardVO vo, @RequestParam MultipartFile file) throws Exception {
		BasicConfigurator.configure();
		qnaboardService.updateQnA(vo);
		
		String fileNm = file.getOriginalFilename();
				
		if( fileNm != null) { // FIXME 모듈화할 수 있지 않을 까 고민해보자..
			
			ObjectStorageService objectStorage = fileUtils.authenObjectStorageService();
			String containerName = "gbs_cai_file"; 
			
			String mimeType = file.getContentType();
			String file_id = Integer.toString(vo.getIdx());
			ObjectPutOptions mimetypeOption = ObjectPutOptions.create().contentType(mimeType);				
						
			filevo = new FileVO(file_id,fileNm);
			logger.info("File ID : "+file_id+" File Name : "+fileNm);
						
			qnaboardService.updateFile(filevo);
						
			try {							
				InputStream fileStream = file.getInputStream();
				Payload<InputStream> payload = new PayloadClass(fileStream);
				objectStorage.objects().put(containerName, fileNm, payload, mimetypeOption); // Object Storage 컨테이너에 파일 적재
					
			} catch (Exception e) {
				logger.error("Fail stored file in ObjectStorage.", e);
			}			
		}
		
		return "redirect:viewqnaboard?idx="+vo.getIdx();
	}
	
	@RequestMapping("/deleteqna")
	public String deleteqna(Model model, @RequestParam("idx")int idx, HttpSession session) throws Exception {
		
		String file_id = Integer.toString(idx);
		qnaboardService.deleteQnA(idx);
		qnaboardService.deleteFile(file_id);		
				
		return "redirect:listqnaboard";
	}
	
	@RequestMapping("/deleteqnacomment")
	public String deleteqnacomment(Model model, @RequestParam("idx")int idx, @RequestParam("org")int org, HttpSession session) throws Exception {
		
		qnaboardService.deleteQnA(idx);
		
		return "redirect:viewqnaboard?idx="+org;
	}
	
	@RequestMapping(value="/filedown", method=RequestMethod.GET)
    public void downloadFile(@RequestParam("file_id") String file_id, HttpSession session, HttpServletRequest request, 
    		HttpServletResponse response) throws Exception {      
                
        String file_nm = qnaboardService.getFileById(file_id); 
                
        ObjectStorageService objectStorage = fileUtils.authenObjectStorageService();
	
		String containerName = "gbs_cai_file";	
				
		SwiftObject pictureObj = objectStorage.objects().get(containerName, file_nm );

		if ( pictureObj == null ) { // The specified file was not found
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			logger.error("File not found.");
			
		}	
		
		DLPayload payload = pictureObj.download();
		InputStream in = payload.getInputStream();
		OutputStream out = response.getOutputStream();

		IOUtils.copy(in, out);
		in.close();
		out.close();
       
    }
	
	private class PayloadClass implements Payload<InputStream> {
    	private InputStream stream = null;
    	
    	public PayloadClass(InputStream stream) {
    		this.stream = stream;
    	}
    	
    	@Override
    	public void close() throws IOException {
    		stream.close();
    	}
    	
    	@Override
    	public InputStream open() {
    		return stream;
    	}
    	
    	@Override
    	public void closeQuietly() {
    		try {
    			stream.close();
    		} catch (IOException e) {
    		}
    	}
    	
    	@Override
    	public InputStream getRaw() {
    		return stream;
    	}
    	
    }
}
