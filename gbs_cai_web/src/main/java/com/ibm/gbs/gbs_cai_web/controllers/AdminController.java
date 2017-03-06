package com.ibm.gbs.gbs_cai_web.controllers;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ibm.gbs.gbs_cai_web.common.StringUtils;
import com.ibm.gbs.gbs_cai_web.service.ClassService;
import com.ibm.gbs.gbs_cai_web.service.EnrollmentService;
import com.ibm.gbs.gbs_cai_web.vo.ClassVO;


@Controller
public class AdminController {
	protected final Log logger = LogFactory.getLog(getClass());
	StringUtils util = new StringUtils();
	
	@Autowired
    private ClassService classService;

	
	@RequestMapping("/download")
    public void downloadFile(@RequestParam("fileName") String fileName, @RequestParam("path") String path, 
    										HttpServletResponse response) throws Exception {

		classService.downloadFile(fileName, path, response);
	}
	
	@RequestMapping("/adminClass")
	public String adminClass(Model model) throws Exception {
        
		model.addAttribute("list", classService.getClassList());
		
		return "adminClassList";
	}
	
	@RequestMapping("/classList")
	public String classList(@RequestParam("session") String session, Model model) throws Exception {
        
		if(session.equals("all")) {
			model.addAttribute("list", classService.getClassList());
		} else {
			model.addAttribute("list", classService.getClassListBySession(session));
		}

		return "adminClassList";
	}
	
	@RequestMapping("/addClassView")
	public String addClassView (Model model) throws Exception {
		
		return "adminAddClass";
	}
	
	@RequestMapping("/addClass")
	public String addClass(ClassVO vo) throws Exception {
		
		classService.addClass(vo);
		
		return "redirect:adminClass";
	}
	
	@RequestMapping(value={"/modifyClassView"}, method=RequestMethod.GET)
	public String modifyClasView(@RequestParam("idx")int idx, Model model) throws Exception {
		
		model.addAttribute("vo", classService.getClassDetail(idx));

		return "adminModifyClass";
	}
	
	@RequestMapping("/modifyClass")
	public String modifyClass(ClassVO vo, Model model) throws Exception {

		int idx = vo.getIdx();
		classService.modifyClass(vo);
		
		return "redirect:detailClass?idx="+idx;
	}
	
	@RequestMapping(value={"/detailClass"}, method=RequestMethod.GET)
	public String detailClass(@RequestParam("idx")int idx, Model model) throws Exception {
		
		model.addAttribute("vo", classService.getClassDetail(idx));

		return "adminClassDetail";
	}
	
	@RequestMapping(value={"/deleteClass"}, method=RequestMethod.GET)
	public String deleteClass(@RequestParam("idx")int idx, Model model) throws Exception {
		
		classService.deleteClass(idx);
		
		return "redirect:adminClass";
	}
	
}
