package com.ibm.gbs.gbs_cai_web.controllers;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ibm.gbs.gbs_cai_web.service.EnrollmentService;

@Controller
public class EnrollmentController {
	protected final Log logger = LogFactory.getLog(getClass());
	
	@Autowired
	private EnrollmentService enrollmentservice;
	
	
	@RequestMapping("/myLecture")
	public String myLecture(@RequestParam("user_id") String user_id, Model model) throws Exception {
        
		model.addAttribute("vo", enrollmentservice.getEnrollmentByUserId(user_id));
		
		return "history";
	}
}
