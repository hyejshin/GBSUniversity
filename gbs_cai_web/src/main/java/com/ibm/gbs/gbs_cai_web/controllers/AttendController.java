package com.ibm.gbs.gbs_cai_web.controllers;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ibm.gbs.gbs_cai_web.common.StringUtils;
import com.ibm.gbs.gbs_cai_web.service.AttendService;

@Controller
public class AttendController {
	protected final Log logger = LogFactory.getLog(getClass());
	StringUtils util = new StringUtils();
	
	@Autowired
    private AttendService attendService;
	
	@RequestMapping("/attend")
	public String attend(Model model) {

		return "attendCheck";
	}
	
	@RequestMapping(value={"/attend/check"}, method=RequestMethod.POST)
	public String checkAttend(Model model, @RequestParam("classcode") String classcode,
			@RequestParam("attendcode") String attendcode, HttpSession session) throws Exception{
		
		String user_id = (String)session.getAttribute("user_id");
		
		// Code Check하기 위해 service에 넘기는 map
		HashMap<String,Object> codeCheckMap = new HashMap<String,Object>();
		codeCheckMap.put("classcode", classcode);
		codeCheckMap.put("attendcode", attendcode);
		
		// 중복체크하기 위해 넘기는 map
		HashMap<String,Object> dupCheckMap = new HashMap<String,Object>();
        dupCheckMap.put("classcode", classcode);
		dupCheckMap.put("user_id", user_id);
		dupCheckMap.put("attendcode", attendcode);
		
		// 입력한 클래스코드와 클래스아이디의 클래스 제목 가져오기
		String title = attendService.getClassTitle(codeCheckMap);

		if(title == null) {
			// 클래스 제목이 존재하지 않기에 입력한 코드와 클래스아이디가 틀림
			model.addAttribute("message", "Fail! Wrong class code or attend Code.");

		} else {
			// 입력한 코드와 클래스아이디가 맞음 -> 중복체크
			if ( attendService.dupCheck(dupCheckMap) == 1) { 
				model.addAttribute("message", "You already attended this class");
			} else {
				// 들어있는 기록이 없으므로 Insert (성공)
				attendService.executeCheck(dupCheckMap);
				model.addAttribute("message", title+": Attended Successfully!");
			}
		}
        
		return "attendCheck";
	}
	
}
