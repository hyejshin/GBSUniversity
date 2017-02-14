package com.ibm.gbs.gbs_cai_web.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ClassController {
	@RequestMapping(value = {"/fetchClasses.do"}, method = RequestMethod.POST)
    public @ResponseBody List<Map<String, Object>> fetchClasses(@RequestParam("random")String random) throws Exception {
		
		List<Map<String, Object>> list = null;
		return list;
    }
}
