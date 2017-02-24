package com.ibm.gbs.gbs_cai_web.service;

import java.util.List;
import java.util.Map;

public interface TestService {
	public List<Map<String, Object>> getObjectById(String id);
	
	public void updateFlag();
}
