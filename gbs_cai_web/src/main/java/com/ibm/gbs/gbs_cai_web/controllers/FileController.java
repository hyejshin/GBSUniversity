package com.ibm.gbs.gbs_cai_web.controllers;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.Properties;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.json.simple.JSONObject;
import org.openstack4j.api.OSClient;
import org.openstack4j.api.storage.ObjectStorageService;
import org.openstack4j.model.common.DLPayload;
import org.openstack4j.model.common.Identifier;
import org.openstack4j.model.common.Payload;
import org.openstack4j.model.storage.object.SwiftObject;
import org.openstack4j.model.storage.object.options.ObjectPutOptions;
import org.openstack4j.openstack.OSFactory;
import org.openstack4j.openstack.storage.object.domain.SwiftObjectImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

@Controller
@MultipartConfig
public class FileController {
	private static final long serialVersionUID = 1L;
	protected final Log logger = LogFactory.getLog(FileController.class);

	@Autowired
	private ResourceLoader resourceLoader;
	private Properties prop = new Properties();

	String filename = "properties/fileobject.properties";   // Object Storage Authentification Information Property

	private ObjectStorageService authenObjectStorageService() {

		InputStream objectProp = getClass().getClassLoader().getResourceAsStream(filename);
		try {
			prop.load(objectProp);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			logger.error("Not exist property files.", e);
		}

		final String USERID = prop.getProperty("USERID");
		final String PASSWORD = prop.getProperty("PASSWORD");
		final String DOMAIN_NM = prop.getProperty("DOMAIN_NM");
		final String PROJECT_NM = prop.getProperty("PROJECT_NM");
		final String OBJECT_STORAGE_AUTH_URL = "https://identity.open.softlayer.com/v3";

		Identifier dmIdentifier = Identifier.byName(DOMAIN_NM);
		Identifier pjIdentifier = Identifier.byName(PROJECT_NM);

		// Object Storage key 인증
		OSClient osclient = OSFactory.builderV3()
				.endpoint(OBJECT_STORAGE_AUTH_URL)
				.credentials(USERID, PASSWORD)
				.scopeToProject(pjIdentifier, dmIdentifier)
				.authenticate();

		logger.info("Success Authentification - Object Storage");

		ObjectStorageService objectStorage = osclient.objectStorage();

		return objectStorage;

	}


	/*
	 * 사용목적 : 화면으로부터 전송된 File을 Object Storage에 적재한다. 
	 *  작성자  : 정연우
	 * 작성일자 : 2017-09-27
	 */
	@RequestMapping(value="/uploadFiles", method = RequestMethod.POST)
	public String uploadFile(@RequestParam MultipartFile file, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ObjectStorageService objectStorage = authenObjectStorageService();
		String containerName = "gbs_cai_file";
		
		
		String fileNm = file.getOriginalFilename();
				
		String mimeType = file.getContentType();
				
		ObjectPutOptions mimetypeOption = ObjectPutOptions.create().contentType(mimeType);
			
		System.out.println("Containter : " + containerName + " fileRealName : " + fileNm);

		if (containerName == null || fileNm == null) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND); // 404 처리
			logger.error("Upload file not found.");
		}

		try {
			InputStream fileStream = file.getInputStream();
			Payload<InputStream> payload = new PayloadClass(fileStream);
			objectStorage.objects().put(containerName, fileNm, payload, mimetypeOption); // Object Storage 컨테이너에 파일 적재
			
			logger.info("Successfully stored file in ObjectStorage.");
		} catch (Exception e) {
			logger.error("Fail stored file in ObjectStorage.", e);
		}

		return "fileview";
	}

	/*
	 * 사용목적 : 화면 로드시 Object Storage에서 파일 목록을 가져온다. 
	 *  작성자  : 정연우
	 * 작성일자 : 2017-09-28
	 */
	@RequestMapping(value="/getFiles" , method = RequestMethod.GET)
	public @ResponseBody void getFiles(HttpServletResponse response) throws Exception {
		ObjectStorageService objectStorage = authenObjectStorageService();
		response.setCharacterEncoding("utf-8");
        response.setContentType("application/json");

		String containerName = "gbs_cai_file";	
					
		if (containerName == null) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND); // 404 처리
			logger.error("Container not found.");
		}

		List<SwiftObjectImpl> fileList = (List<SwiftObjectImpl>) objectStorage.objects().list(containerName);		
		
		Gson gson = new Gson();
		JSONObject object = new JSONObject();			
						
		JsonArray jsonArr = gson.toJsonTree(fileList).getAsJsonArray();
								
		object.put("file", jsonArr);
						
		PrintWriter out = response.getWriter();
		out.print(object);						
	}
	
	/*
	 * 사용목적 : 파일 다운로드 
	 *  작성자  : 정연우
	 * 작성일자 : 2017-09-27
	 */
	@RequestMapping(value={"/fileDown"} , method = RequestMethod.GET)
	public String downloadFile(@RequestParam String fileName, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ObjectStorageService objectStorage = authenObjectStorageService();
		response.setCharacterEncoding("utf-8");
        response.setContentType("application/json");

		String containerName = "gbs_cai_file";	
				
		SwiftObject pictureObj = objectStorage.objects().get(containerName, fileName);

		if (pictureObj == null) { // The specified file was not found
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			System.out.println("File not found.");
			
		}

		String mimeType = pictureObj.getMimeType();
		System.out.println("mimeType : "+mimeType);

		DLPayload payload = pictureObj.download();

		InputStream in = payload.getInputStream();

		response.setContentType(mimeType);

		OutputStream out = response.getOutputStream();

		IOUtils.copy(in, out);
		in.close();
		out.close();

		
		return "fileview";
		
	}

	@RequestMapping("/file/test")
	public String fileTest(ModelMap model) throws Exception {

		return "fileview";
	}

		
	/*
	 * 사용목적  : Header, Metadata 정보를 제외한 데이터를 전송할 때 사용된다.
	 *  작성자   : 정연우 
	 * 작성일자  : 2017-09-27
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

}
