/**
 * File         : FrontController.java
 * author       : Joosang Kim
 * version      : 0.0.1
 * description  : front controller for this web app
 */
package com.ibm.gbs.gbs_cai_web.controllers;


import com.ibm.gbs.gbs_cai_web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.stereotype.Controller;
import com.ibm.gbs.gbs_cai_web.vo.UserVO;

@Controller("/user")
public class UserController {
    @Autowired
    private UserService userService;
    private UserVO user;

    @RequestMapping(value = "/{userId}", method = RequestMethod.GET)
    public String userPage(ModelMap model){
        user = userService.getUserById("test");
        
        System.out.println(user.getIdx());
        System.out.println(userService.getUserById("test"));
        return "userHome";
    }
}
