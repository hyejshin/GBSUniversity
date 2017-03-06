package com.ibm.gbs.gbs_cai_web.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.gbs.gbs_cai_web.mapper.AttendMapper;
import com.ibm.gbs.gbs_cai_web.service.AttendService;

@Service("attendService")
public class AttendServiceImpl implements AttendService {
	
	@Autowired
	private AttendMapper attendMapper;
	
	public String getClassTitle(HashMap<String,Object> map) throws Exception {
		return attendMapper.getClassTitle(map);
	}
	
	public int dupCheck(HashMap<String,Object> map) throws Exception {
		return attendMapper.dupCheck(map);
	}
	
	public void executeCheck(HashMap<String,Object> map) throws Exception {
		attendMapper.executeCheck(map);
	}
	
}
