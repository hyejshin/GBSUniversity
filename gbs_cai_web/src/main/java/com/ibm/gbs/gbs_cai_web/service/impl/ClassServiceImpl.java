package com.ibm.gbs.gbs_cai_web.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.gbs.gbs_cai_web.mapper.ClassMapper;
import com.ibm.gbs.gbs_cai_web.mapper.TestMapper;
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
}
