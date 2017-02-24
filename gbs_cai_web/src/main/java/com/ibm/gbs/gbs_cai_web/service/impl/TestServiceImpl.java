package com.ibm.gbs.gbs_cai_web.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.gbs.gbs_cai_web.mapper.TestMapper;
import com.ibm.gbs.gbs_cai_web.service.TestService;

@Service("testService")
public class TestServiceImpl implements TestService {
	
	@Autowired
	private TestMapper testMapper;

    @Override
    public List<Map<String, Object>> getObjectById(String id) {
        return testMapper.getObjectById(id);
       // return userMapper.getUserById("test");
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public void updateFlag() {
    	System.out.println("gogogogogogogogo");
    	testMapper.updateFlag();
    };
}
