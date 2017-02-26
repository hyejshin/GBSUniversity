package com.ibm.gbs.gbs_cai_web.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ibm.gbs.gbs_cai_web.mapper.ClassMapper;
import com.ibm.gbs.gbs_cai_web.service.ClassService;
import com.ibm.gbs.gbs_cai_web.vo.ClassVO;

@Service("classService")
public class ClassServiceImpl implements ClassService {
	@Autowired
	private ClassMapper classMapper;
	
	public List<Map<String, Object>> getClassesByCondition(HashMap<String,Object> map) throws Exception {
		
		return classMapper.getClassesByCondition(map);
	}
	
	public List<Map<String, Object>> getDetailByCondition(int idx) throws Exception {
		return classMapper.getDetailByCondition(idx);
	}
	
	
	/*
	 * class Admin 관련
	 */
	
	public List<ClassVO> getClassList() throws Exception {
		return classMapper.getClassList();
	}
	
	public ClassVO getClassDetail(int idx) throws Exception {
		return classMapper.getClassDetail(idx);
	}
	
	public void addClass(Model model) throws Exception {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String class_id = request.getParameter("class_id");
		String title = request.getParameter("title");
		String teacher = request.getParameter("teacher");
		String booth = request.getParameter("booth");
		
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String date = request.getParameter("date");
		int capacity = Integer.parseInt(request.getParameter("capacity"));
		String detail = request.getParameter("detail");
		
		String image = request.getParameter("image");
		String atta1 = request.getParameter("atta1");
		
		ClassVO vo = new ClassVO(class_id, title, teacher, booth, start, end, date, capacity, detail, image, atta1);
		classMapper.addClass(vo);
	}
	
	public void modifyClass(Model model) throws Exception {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		String class_id = request.getParameter("class_id");
		String title = request.getParameter("title");
		String teacher = request.getParameter("teacher");
		String booth = request.getParameter("booth");
		
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String date = request.getParameter("date");
		int capacity = Integer.parseInt(request.getParameter("capacity"));
		String detail = request.getParameter("detail");
		
		String image = request.getParameter("image");
		String atta1 = request.getParameter("atta1");
		
		ClassVO vo = new ClassVO(idx, class_id, title, teacher, booth, start, end, date, capacity, detail, image, atta1);
		classMapper.modifyClass(vo);
	}
	
	public void deleteClass(int idx) throws Exception {
		classMapper.deleteClass(idx);
	}
	
	/* ClassController와 연동되는 ServiceImpl - 정연우(0224)*/
	public List<Map<String, Object>> getMyLec(String user_id) throws Exception {
		return classMapper.getMyLec(user_id);
	}
	
	public List<Map<String, Object>> getThisLec(String class_id) throws Exception {
		return classMapper.getThisLec(class_id);
	}
	
	public void updateFlag(HashMap<String,Object> map) throws Exception {
		classMapper.updateFlag(map);
	}
	
	public int checkCode(HashMap<String,Object> map) throws Exception {
		return classMapper.checkCode(map);
	}
}
