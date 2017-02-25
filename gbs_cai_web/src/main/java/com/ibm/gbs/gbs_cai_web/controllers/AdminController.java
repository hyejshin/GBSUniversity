package com.ibm.gbs.gbs_cai_web.controllers;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ibm.gbs.gbs_cai_web.service.ClassService;


@Controller
public class AdminController {
	protected final Log logger = LogFactory.getLog(getClass());

	@Autowired
    private ClassService classService;
	
	@RequestMapping("/adminClass")
	public String adminClass(Model model) throws Exception {
		
		model.addAttribute("list", classService.getClassList());
		
		return "admin/adminClass";
	}
	
	@RequestMapping("/addClass")
	public String addClass (HttpServletRequest request, Model model) {
		
		model.addAttribute("request", request);
		classService.addClass(model);
		
		return "redirect:adminClass";
	}
	
	@RequestMapping("/modifyClass")
	public String modifyClass(HttpServletRequest request, Model model) {
		
		//model.addAttribute("request", request);
		//classService.modifyClass(model);
		
		return "redirect:detailClass";
	}
	
	@RequestMapping(value={"/detailClass"}, method=RequestMethod.GET)
	public String detailClass(@RequestParam("idx")int idx, Model model) throws Exception {
		
		model.addAttribute("vo", classService.getClassDetail(idx));

		return "admin/adminClassDetail";
	}
	
	@RequestMapping(value={"/deleteClass"}, method=RequestMethod.GET)
	public String deleteClass(@RequestParam("idx")int idx, Model model) throws Exception {
		
		classService.deleteClass(idx);
		
		return "redirect:adminClass";
	}
	
}
