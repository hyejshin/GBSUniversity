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
import org.springframework.web.bind.annotation.RestController;
import org.springframework.stereotype.Controller;

@Controller
public class UserController {

    @RequestMapping(value = {"/user"}, method = RequestMethod.GET)
    public String userPage(ModelMap model){
        return "userHome";
    }
}
