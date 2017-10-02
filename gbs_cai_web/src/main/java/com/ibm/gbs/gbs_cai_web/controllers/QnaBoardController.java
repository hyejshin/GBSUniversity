package com.ibm.gbs.gbs_cai_web.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ibm.gbs.gbs_cai_web.service.QnaBoardService;
import com.ibm.gbs.gbs_cai_web.vo.QnaBoardVO;

@Controller
public class QnaBoardController {
	
	@Autowired
	private QnaBoardService qnaboardService;
	
	@RequestMapping("/listqnaboard")
	public String listqnaboard(Model model) throws Exception {
		
		model.addAttribute("list", qnaboardService.getQnAList());
		
		return "listqnaboard";
	}
	
	@RequestMapping("/viewqnaboard")
	public String viewqnaboard(Model model, @RequestParam("idx")int idx) throws Exception {
		
		QnaBoardVO vo = qnaboardService.getQnA(idx);
		model.addAttribute("vo", vo);
		qnaboardService.increaseVisit(idx, vo.getCount() + 1);
		model.addAttribute("list", qnaboardService.getQnAComment(idx));
		
		return "viewqnaboard";
	}
	
	@RequestMapping("/addqnaboardView")
	public String addqnaboardView(Model model) {
		
		return "addqnaboard";
	}
	
	
	@RequestMapping("/addqna")
	public String addQnA(Model model, QnaBoardVO vo) throws Exception {
		
		qnaboardService.addQnA(vo);
		
		return "redirect:listqnaboard";
	}
	
	@RequestMapping("/addqnacomment")
	public String addQnAComment(Model model, QnaBoardVO vo, @RequestParam("idx")int idx) throws Exception {
		
		vo.setRef(idx);
		qnaboardService.addQnA(vo);
		
		return "redirect:viewqnaboard?idx="+idx;
	}
	
	@RequestMapping("/deleteqna")
	public String deleteqna(Model model, @RequestParam("idx")int idx, HttpSession session) throws Exception {
		
		qnaboardService.deleteQnA(idx);
		
		return "redirect:listqnaboard";
	}
	
	@RequestMapping("/deleteqnacomment")
	public String deleteqnacomment(Model model, @RequestParam("idx")int idx, @RequestParam("org")int org, HttpSession session) throws Exception {
		
		qnaboardService.deleteQnA(idx);
		
		return "redirect:viewqnaboard?idx="+org;
	}
}
