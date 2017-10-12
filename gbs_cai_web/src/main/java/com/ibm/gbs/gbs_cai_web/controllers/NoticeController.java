package com.ibm.gbs.gbs_cai_web.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ibm.gbs.gbs_cai_web.service.NoticeService;
import com.ibm.gbs.gbs_cai_web.vo.NoticeVO;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("/listNotice")
	public String listNotice(Model model) throws Exception {
		
		model.addAttribute("list", noticeService.getNoticeList());
		
		return "listNotice";
	}
	
	@RequestMapping("/addNoticeView")
	public String addNoticeView(Model model, HttpSession session) {
		
		String user_id = (String)session.getAttribute("user_id");

		if(user_id.equals("ibmk0reagbsadmin"))
			return "addNotice";
		else
			return "redirect:listNotice";
	}
	
	@RequestMapping("/addNotice")
	public String addNotice(Model model, NoticeVO vo) throws Exception {
		
		noticeService.addNotice(vo);
		
		return "redirect:listNotice";
	}
	
	@RequestMapping("/deleteNotice")
	public String noticeList(Model model, @RequestParam("idx")int idx) throws Exception {
		
		noticeService.deleteNotice(idx);
		
		return "redirect:listNotice";
	}
}
