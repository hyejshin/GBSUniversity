/**
 * File         : BoardController.java
 * author       : Joosang Kim
 * version      : 0.0.1
 * description  : Board Controller for this web app
 */
package com.ibm.gbs.gbs_cai_web.controllers;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

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
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ibm.gbs.gbs_cai_web.common.FileUtils;
import com.ibm.gbs.gbs_cai_web.service.BoardService;
import com.ibm.gbs.gbs_cai_web.service.EnrollmentService;
import com.ibm.gbs.gbs_cai_web.vo.BoardVO;
import com.ibm.gbs.gbs_cai_web.vo.CommentVO;
import com.ibm.gbs.gbs_cai_web.vo.EnrollmentVO;
import com.ibm.gbs.gbs_cai_web.vo.FileVO;
import com.ibm.gbs.gbs_cai_web.vo.UserVO;

/**
 * board Controller author : Joosang Kim
 */
@Controller
public class BoardController {
	private static final long serialVersionUID = 1L;
	private static final Logger logger = Logger.getLogger(BoardController.class);
	
    @Autowired
    UserVO user;
    @Autowired
    BoardVO boardvo;
    @Autowired
    FileVO filevo;
    @Autowired
    EnrollmentVO enrollment;
    @Autowired
    CommentVO commentvo;
    @Autowired
    EnrollmentService enrollmentService;
    @Autowired
    BoardService boardService;
    
    FileUtils fileutils = new FileUtils(); // Object Storage 인증 담당
   
    /*
	 * 사용목적 : 질문목록을 가져온다. 
	 *  작성자  : 정연우
	 * 작성일자 : 2017-09-29
	 */
    @RequestMapping(value = "/board", method = RequestMethod.GET)
    public ModelAndView showMyBoardList(ModelMap model, HttpServletRequest req, HttpServletResponse res, HttpSession session) throws Exception {
    	BasicConfigurator.configure();
        ModelAndView mv = new ModelAndView();
        List<BoardVO> enrollmentList = boardService.getBoardList();
               
        mv.setViewName("board_list");
        mv.addObject("list", enrollmentList);

        return mv;
    }
    
    /*
	 * 사용목적 : 질문에 대한 상세내용을 보여준다. 
	 *  작성자  : 정연우
	 * 작성일자 : 2017-09-29
	 */
    @RequestMapping(value = "/board/detail", method = RequestMethod.GET)
    public ModelAndView showBoardDetail(@RequestParam int idx) throws Exception {
    	BasicConfigurator.configure();
    	ModelAndView mv = new ModelAndView();
    	boardvo = new BoardVO(idx);
    	
    	List<BoardVO> detail = boardService.getBoardDetail(boardvo);    	
    	
    	for( BoardVO vo : detail ) {
    		logger.info("idx : "+vo.getIdx()+" User ID : "+vo.getUser_id());
    	}
    	
    	mv.setViewName("board_detail");
		mv.addObject("list", detail);
		
		return mv;
    }
    
    /*
   	 * 사용목적 : 질문 작성 화면으로 이동한다. 
   	 *  작성자  : 정연우
   	 * 작성일자 : 2017-09-29
   	 */
    @RequestMapping(value = "/board/write", method = RequestMethod.GET)
    public String writeBoard() throws Exception {
    	   	
		return "board_write";
    }
    
    /*
   	 * 사용목적 : 질문 작성화면에서 쓴 내용을 등록한다.
   	 *  작성자  : 정연우
   	 * 작성일자 : 2017-09-29
   	 */
    @RequestMapping(value = "/board/enroll", method = RequestMethod.POST)
    public ModelAndView enrollBoard(@RequestParam MultipartFile file,@RequestParam String title,@RequestParam String detail,
    		HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
    	BasicConfigurator.configure();
    	response.setCharacterEncoding("utf-8");
        response.setContentType("application/json");
       
    	ModelAndView mv = new ModelAndView("redirect:/board");
		user = (UserVO)session.getAttribute("user");
		String userId = user.getUser_id();
		String fileNm = file.getOriginalFilename();
		long fSize = file.getSize();
		String fileSize =  String.valueOf(fSize);
			
		boardvo = new BoardVO(title,userId,detail);
		logger.info("FileNm : "+fileNm+" userId : "+boardvo.getUser_id());
		int ret = boardService.insertNewBoardConetent(boardvo);	
		
		if( ret < 0 ) {
			throw new Exception();
		}
				
		if( fileNm != null) {
			
			ObjectStorageService objectStorage = fileutils.authenObjectStorageService();
			String containerName = "gbs_cai_file"; 
			
			String mimeType = file.getContentType();				
			ObjectPutOptions mimetypeOption = ObjectPutOptions.create().contentType(mimeType);				
			
			String file_id = Integer.toString(boardService.selectBoardIdx());
			filevo = new FileVO(fileNm,fileSize,file_id);
			
			boardService.insertNewBoardFileContent(filevo);
						
			try {							
				InputStream fileStream = file.getInputStream();
				Payload<InputStream> payload = new PayloadClass(fileStream);
				objectStorage.objects().put(containerName, fileNm, payload, mimetypeOption); // Object Storage 컨테이너에 파일 적재
							
			} catch (Exception e) {
				logger.error("Fail stored file in ObjectStorage.", e);
			}			
		}		
    	
        return mv;
    }
   
    /*
   	 * 사용목적 : 질문 상세 화면에서 첨부된 파일을 다운로드 한다. 
   	 *  작성자  : 정연우
   	 * 작성일자 : 2017-09-29
   	 */
    @RequestMapping(value="/board/filedown", method=RequestMethod.GET)
    public void downloadFile(@RequestParam("file_id") String file_id, HttpSession session, HttpServletRequest request, 
    		HttpServletResponse response) throws Exception {      
                
        String file_nm = boardService.getFileById(file_id); 
                
        ObjectStorageService objectStorage = fileutils.authenObjectStorageService();
	
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
    
    /*
     * 사용목적 : Header, Metadata 정보를 제외한 데이터를 전송할 때 사용된다. 
     *  작성자  : 정연우
     * 작성일자 : 2017-09-29
     */
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

        
    /**
     * add question
     */
    /*@RequestMapping(value="/board/postQuestion", method=RequestMethod.POST)
    public @ResponseBody List<BoardVO>postQuestion(@RequestParam("detail") String detail,
                                                   @RequestParam("board_id") String board_id,
                                                   @RequestParam("class_id") String class_id, 
                                                   @RequestParam("type")    String type, 
                                                   HttpServletResponse res,
                                                   HttpSession session) throws Exception{       
        int ret = 0;

        user = (UserVO)session.getAttribute("user");
        String user_id = user.getUser_id();
        type= String.valueOf(type.charAt(0));
        
        boardvo = new BoardVO(board_id, class_id, user_id, detail, type);
        ret = boardService.insertNewBoardConetent(boardvo);
        
        if(ret<0){
            throw new Exception();
        }
        return boardService.getBoardListByClassId(class_id);
    }*/
    
    
   /* @RequestMapping(value="/board/modifyQuestion", method=RequestMethod.POST)
    public @ResponseBody List<BoardVO>modifyQuestion(@RequestParam("detail") String detail,
                                                   @RequestParam("board_id") String board_id,
                                                   @RequestParam("class_id") String class_id, 
                                                   @RequestParam("type")    String type,
                                                   @RequestParam("idx")     int idx,
                                                   HttpServletResponse res,
                                                   HttpSession session) throws Exception{       
        int ret = 0;        
        ret = boardService.modifyBoardContent(idx, class_id, board_id, detail);        
    
        if(ret<0){
            throw new Exception();
        }
        return boardService.getBoardListByClassId(class_id);
    }
    
    *//**
     * add comment
     *//*
    @RequestMapping(value="/board/postAnswer", method=RequestMethod.POST)
    public @ResponseBody List<BoardVO>postAnswer(@RequestParam("answerDetail") String answerDetail,
                                                   @RequestParam("board_id") String board_id,
                                                   @RequestParam("class_id") String class_id, 
                                                   @RequestParam("idx")    String idx, 
                                                   @RequestParam("author_nm") String author_nm,
                                                   HttpSession session) throws Exception{       
        int ret = 0;

        user = (UserVO)session.getAttribute("user");
        String user_id = user.getUser_id();
        
        commentvo = new CommentVO(class_id, board_id, Integer.valueOf(idx), answerDetail, author_nm);
        
        
        ret = boardService.insertComment(commentvo);
        
        if(ret<0){
            throw new Exception();
        }
        return boardService.getBoardListByClassId(class_id);
    }*/
    

}
