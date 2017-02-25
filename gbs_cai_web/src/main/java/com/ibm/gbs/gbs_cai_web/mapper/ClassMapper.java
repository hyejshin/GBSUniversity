package com.ibm.gbs.gbs_cai_web.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibm.gbs.gbs_cai_web.vo.ClassVO;

public interface ClassMapper {
	public List<Map<String, Object>> getClassesByCondition(HashMap<String,Object> map);
	
	/* 상세보기 */
	public List<Map<String, Object>> getDetailByCondition(int idx);
	
	public List<Map<String, Object>> getMyLec(String user_id);
	
	public List<Map<String, Object>> getThisLec(String class_id);
	
	public void updateFlag(HashMap<String,Object> map);
	
	public int checkCode(HashMap<String,Object> map);
}
