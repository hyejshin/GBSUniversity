package com.ibm.gbs.gbs_cai_web.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibm.gbs.gbs_cai_web.vo.ClassVO;

public interface ClassMapper {
	public List<Map<String, Object>> getClassesByCondition(HashMap<String,Object> map);
	
	public List<Map<String, Object>> getDetailByCondition(int idx);
	
	
	/* Admin Class 관련 */
	
	public List<ClassVO> getClassList();
	
	public List<ClassVO> getClassListBySession(String session);
	
	public String getClassID();
	
	public ClassVO getClassDetail(int idx);
	
	public void addClass(ClassVO vo);
	
	public void modifyClass(ClassVO vo);
	
	public void deleteClass(int idx);
	
	/* ClassController와 연동되는 Mapper - 정연우(0224)*/
	public List<Map<String, Object>> getMyLec(String user_id);
	
	public List<Map<String, Object>> getThisLec(String class_id);
	
	public void updateFlag(HashMap<String,Object> map);
	
	public int checkCode(HashMap<String,Object> map);
}
