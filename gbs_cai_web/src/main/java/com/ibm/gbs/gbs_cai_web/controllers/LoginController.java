/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author kr055045
 */
@Controller
@RequestMapping(value={"/login"})
public class LoginController {
    @RequestMapping(method=RequestMethod.GET)
    public String loginPage(ModelMap modelMap){
        return "login";
    }
    
}
