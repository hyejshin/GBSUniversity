package com.ibm.gbs.gbs_cai_web.controllers;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ibm.gbs.gbs_cai_web.service.EnrollmentService;
import com.ibm.gbs.gbs_cai_web.vo.BusVO;
import com.ibm.gbs.gbs_cai_web.vo.RoomVO;

@Controller
public class EnrollmentController {
	protected final Log logger = LogFactory.getLog(getClass());

	@Autowired
	private EnrollmentService enrollmentservice;

	@RequestMapping("/myRoominfo")
	public ModelAndView myRoomInfo(@RequestParam("user_id") String user_id) throws Exception {
		ModelAndView mv = new ModelAndView();

		try {
			RoomVO roominfo = enrollmentservice.getRoomInfoById(user_id);
			mv.setViewName("");
			mv.addObject("roominfo", roominfo);
		} catch (Exception e) {
			logger.error("USER_ID is null in my room info.", e);
		}

		return mv;
	}

	@RequestMapping("/myBusInfo")
	public ModelAndView myBusInfo(@RequestParam("user_id") String user_id) throws Exception {
		ModelAndView mv = new ModelAndView();

		try {
			BusVO businfo = enrollmentservice.getBusInfoById(user_id);
			mv.setViewName("");
			mv.addObject("businfo", businfo);
		} catch (Exception e) {
			logger.error("USER_ID is null in my bus info.", e);
		}

		return mv;
	}
}
