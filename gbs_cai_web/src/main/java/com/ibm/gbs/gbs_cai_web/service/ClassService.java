package com.ibm.gbs.gbs_cai_web.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.ibm.gbs.gbs_cai_web.vo.ClassVO;


public interface ClassService {
	public List<Map<String, Object>> getClassesByCondition(HashMap<String,Object> map) throws Exception;
	
	public List<Map<String, Object>> getDetailByCondition(int idx) throws Exception;
	
	
	/*
	 * class Admin 관련 - 신혜정
     */
	
	public List<ClassVO> getClassList() throws Exception;
	
	public ClassVO getClassDetail(int idx) throws Exception;
	
	public void addClass(ClassVO vo) throws Exception;
	
	public void modifyClass(ClassVO vo) throws Exception;
	
	public void deleteClass(int idx) throws Exception;
	
	public void downloadFile(String fileName, String path, HttpServletResponse response) throws Exception;
	
	//public void uploadImageAndFiles(MultipartFile image, MultipartFile[] files, ClassVO vo);
  
  

	/* ClassController와 연동되는 Service - 정연우(0224)*/
	public List<Map<String, Object>> getMyLec(String user_id) throws Exception; 

	public List<Map<String, Object>> getThisLec(String class_id) throws Exception; 

	public int checkCode(HashMap<String,Object> map) throws Exception;


	
}
