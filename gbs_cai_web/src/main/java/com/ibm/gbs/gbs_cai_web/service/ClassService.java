package com.ibm.gbs.gbs_cai_web.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibm.gbs.gbs_cai_web.vo.ClassVO;

public interface ClassService {
	public List<Map<String, Object>> getClassesByCondition(HashMap<String,Object> map) throws Exception;
	
	public List<Map<String, Object>> getDetailByCondition(int idx) throws Exception;
}
