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
@RequestMapping(value={"/"})
public class FrontController {
//    @Autowired
//    private UserVO userVO;
    
    @RequestMapping(value={"/", "/index"}, method = RequestMethod.GET)
    public String indexPage(ModelMap model) {
        /** 
         * TODO : check login or not
         * if login -> index page
         * else     -> login page
         */
        //model.addAttribute("session", "session");
        
        
        return "index";
        
    }
    
}
