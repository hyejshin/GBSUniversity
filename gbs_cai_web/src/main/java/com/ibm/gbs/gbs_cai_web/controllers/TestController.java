package com.ibm.gbs.gbs_cai_web.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ibm.gbs.gbs_cai_web.service.TestService;

@Controller
public class TestController {
	@Autowired
    private TestService testService;
		
	
	 @RequestMapping(value ={"/home"}, method = RequestMethod.GET)
	    public String indexPage(ModelMap model) {
	        /** 
	         * TODO : check login or not
	         * if login -> index page
	         * else     -> login page
	         */
	        //model.addAttribute("msg", "Login View Should be implemented");
	        return "ajaxTest";
	    }
	
	@RequestMapping(value = {"/fetchClasses"}, method = RequestMethod.POST)
    public @ResponseBody List<Map<String, Object>> fetchClasses(@RequestParam("id")String id) throws Exception {
		System.out.println("First Commit Test : "+id);
		
		List<Map<String, Object>> list = testService.getObjectById(id);
		System.out.println(list.size());
		return list;
    }
}
