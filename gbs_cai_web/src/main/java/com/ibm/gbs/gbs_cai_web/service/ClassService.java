package com.ibm.gbs.gbs_cai_web.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import com.ibm.gbs.gbs_cai_web.vo.ClassVO;


public interface ClassService {
	public List<Map<String, Object>> getClassesByCondition(HashMap<String,Object> map) throws Exception;
	
	public ClassVO getDetailByCondition(String class_id) throws Exception;
	
	
	/*
	 * class Admin 관련 - 신혜정
     */
	
	public List<ClassVO> getClassList() throws Exception;
	
	public List<ClassVO> getClassListBySession(String session) throws Exception;
	
	public ClassVO getClassDetail(int idx) throws Exception;
	
	public void addClass(ClassVO vo) throws Exception;
	
	public void modifyClass(ClassVO vo) throws Exception;
	
	public void deleteClass(int idx) throws Exception;
	
	public void downloadFile(String fileName, String path, HttpServletResponse response) throws Exception;
	
	//public void uploadImageAndFiles(MultipartFile image, MultipartFile[] files, ClassVO vo);
  
	// 클래스 상세
	public ClassVO getClassDetailById(String class_id) throws Exception;
	
	//MyLecture에서 상세보기
	public ClassVO getClassDetailByTitleSession(String title, String session) throws Exception;
	
	
	

	/* ClassController와 연동되는 Service - 정연우(0224)*/
	public List<Map<String, Object>> getMyLec(String user_id) throws Exception; 

	public List<Map<String, Object>> getThisLec(String class_id) throws Exception; 

	public int checkCode(HashMap<String,Object> map) throws Exception;

	public void updateFlag(HashMap<String, Object> map1);
        
        /* index page - get all class list - Joosang Kim */
        public List<ClassVO> getAllClass() throws Exception;


	
}
