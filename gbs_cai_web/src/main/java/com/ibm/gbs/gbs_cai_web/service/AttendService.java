package com.ibm.gbs.gbs_cai_web.service;

import java.util.HashMap;

public interface AttendService {
	
	public String getClassTitle(HashMap<String,Object> map) throws Exception;
	
	public int dupCheck(HashMap<String,Object> map) throws Exception;
	
	public void executeCheck(HashMap<String,Object> map) throws Exception;
	
}
