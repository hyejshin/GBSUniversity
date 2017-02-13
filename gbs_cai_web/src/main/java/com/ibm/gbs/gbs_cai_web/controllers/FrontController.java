/**
 * File         : FrontController.java
 * author       : Joosang Kim
 * version      : 0.0.1
 * description  : front controller for this web app
 */
package com.ibm.gbs.gbs_cai_web.controllers;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.stereotype.Controller;


@Controller
public class FrontController {
    
    @RequestMapping(value ={"/"}, method = RequestMethod.GET)
    public String loginPage(ModelMap model) {
        /**
         * TODO : check login or not
         * if login -> index page
         * else     -> login page
         */
        model.addAttribute("msg", "Login View Should be implemented");
        return "login";
    }
 
    
}
