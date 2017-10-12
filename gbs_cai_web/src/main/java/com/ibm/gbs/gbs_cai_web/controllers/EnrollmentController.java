package com.ibm.gbs.gbs_cai_web.controllers;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.ibm.gbs.gbs_cai_web.service.EnrollmentService;
import com.ibm.gbs.gbs_cai_web.vo.EnrollmentVO;

@Controller
public class EnrollmentController {
	private static final Logger logger = Logger.getLogger(EnrollmentController.class);

	@Autowired
	private EnrollmentService enrollmentservice;

	@RequestMapping("/myEnroll")
	public String myRoomInfo(Model model,@RequestParam("user_id") String user_id) throws Exception {
		BasicConfigurator.configure();		
		
		try {
			logger.info("USER ID : "+user_id);
			EnrollmentVO enrollmentvo = enrollmentservice.getEnrollmentById(user_id);
			logger.info("User ID : "+enrollmentvo.getUser_id()+" User Name : "+enrollmentvo.getUser_name()+" Depart Place : "+enrollmentvo.getDepart_place());
			model.addAttribute("list", enrollmentvo);
			
		} catch (Exception e) {
			logger.error("USER_ID is null in private enrollment info.", e);
		}

		return "index";
	}

}
