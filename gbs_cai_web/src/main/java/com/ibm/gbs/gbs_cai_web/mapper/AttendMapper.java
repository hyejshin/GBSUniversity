package com.ibm.gbs.gbs_cai_web.mapper;

import java.util.HashMap;

public interface AttendMapper {

	public String getClassTitle(HashMap<String,Object> map);
	
	public int dupCheck(HashMap<String,Object> map);
	
	public void executeCheck(HashMap<String,Object> map);
}
