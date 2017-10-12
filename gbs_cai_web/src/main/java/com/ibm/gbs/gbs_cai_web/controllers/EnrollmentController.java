package com.ibm.gbs.gbs_cai_web.controllers;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public ModelAndView myRoomInfo(@RequestParam("user_id") String user_id) throws Exception {
		BasicConfigurator.configure();
		ModelAndView mv = new ModelAndView();
		
		logger.info("User ID : "+user_id);
		try {
			EnrollmentVO enrollmentvo = enrollmentservice.getEnrollmentById(user_id);
			mv.setViewName("");
			mv.addObject("list", enrollmentvo);
		} catch (Exception e) {
			logger.error("USER_ID is null in private enrollment info.", e);
		}

		return mv;
	}

}
