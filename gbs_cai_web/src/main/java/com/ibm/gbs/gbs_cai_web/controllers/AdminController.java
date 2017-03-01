package com.ibm.gbs.gbs_cai_web.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ibm.gbs.gbs_cai_web.service.ClassService;


@Controller
public class AdminController {
	protected final Log logger = LogFactory.getLog(getClass());
	
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
		
		return "admin/adminClass";
	}
	
	@RequestMapping("/addClassView")
	public String addClassView (Model model) throws Exception {
		
		return "admin/adminAddClass";
	}
	
	@RequestMapping("/addClass")
	public String addClass(@RequestParam("image") MultipartFile image, @RequestParam("files") MultipartFile[] files, 
												HttpServletRequest request, Model model) throws Exception {		
        
		model.addAttribute("image", image);
		model.addAttribute("files", files);
		model.addAttribute("request", request);
		classService.addClass(model);
		
		return "redirect:adminClass";
	}
	
	@RequestMapping(value={"/modifyClassView"}, method=RequestMethod.GET)
	public String modifyClasView(@RequestParam("idx")int idx, Model model) throws Exception {
		
		model.addAttribute("vo", classService.getClassDetail(idx));

		return "admin/adminModifyClass";
	}
	
	@RequestMapping("/modifyClass")
	public String modifyClass(@RequestParam("image") MultipartFile image, @RequestParam("files") MultipartFile[] files, 
													HttpServletRequest request, Model model) throws Exception {
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		
		model.addAttribute("image", image);
		model.addAttribute("files", files);
		model.addAttribute("request", request);
		classService.modifyClass(model);
		
		return "redirect:detailClass?idx="+idx;
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
