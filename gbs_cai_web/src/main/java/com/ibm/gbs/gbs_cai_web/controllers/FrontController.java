/**
 * File         : FrontController.java
 * author       : Joosang Kim
 * version      : 0.0.2
 * description  : front controller for this web app
 */
package com.ibm.gbs.gbs_cai_web.controllers;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.stereotype.Controller;

@Controller
@RequestMapping(value={"/", "/members"})
public class FrontController {
//    @Autowired
//    private UserVO userVO;
    
   @RequestMapping(value={"/", "/maintile"}, method = RequestMethod.GET)
    public String indexPage(ModelMap model) {
        /** 
         * TODO : check login or not
         * if login -> index page
         * else     -> login page
         */
        //model.addAttribute("session", "session");    
        
        return "maintile";
        
    }
    //index1: Welcomespeech index2: Agenda page
    //add by Misu Choi
    @RequestMapping("/index2")
    public String homePage2(ModelMap model) {
    	
    	return "index2";
    }
    @RequestMapping("/index1")
    public String homePage1(ModelMap model) {
    	
    	return "index1";
    }
    
    @RequestMapping("/detail_session")
    public String detailSessionPage(ModelMap model) {
    	
    	return "detail_session";
    }
    
    @RequestMapping("/detail_plenary")
    public String detailPlenaryPage(ModelMap model) {
    	
    	return "detail_plenary";
    }
    
    @RequestMapping("/roominfo")
    public String roomInfo(ModelMap model) {
    	
    	return "roominfo";
    }
    
    @RequestMapping("/conradHotel")
    public String conradHotel(ModelMap model) {
    	
    	return "conradHotel";
    }
    
    @RequestMapping(value={"/members"}, method = RequestMethod.GET)
    public String members(ModelMap model){
        return "members";
    }
}
