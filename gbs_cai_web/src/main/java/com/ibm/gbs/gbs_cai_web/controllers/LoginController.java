/**
 * File         : LoginController.java
 * author       : Joosang Kim
 * version      : 0.0.1
 * description  : login controller for this web app
 */
package com.ibm.gbs.gbs_cai_web.controllers;

import com.ibm.gbs.gbs_cai_web.service.LoginService;
import com.ibm.gbs.gbs_cai_web.vo.UserVO;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author kr055045
 */
@Controller
public class LoginController {

    @Autowired
    private LoginService loginService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(ModelMap modelMap, HttpServletRequest req, HttpServletResponse res, HttpSession session){
        String returnUrl = "login";
        if(session.getAttribute("user") != null){
            returnUrl = "index";
            try {
                res.sendRedirect("/index");
                return returnUrl;
            } catch (IOException ex) {
                Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return returnUrl;
    }

    /**
     * User Login Author : Joosang Kim
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public void doLogin(ModelMap modelMap, HttpServletRequest req, HttpServletResponse res, HttpSession session) {   

        UserVO user = new UserVO();
        String user_id = req.getParameter("user_id").toString();
        String password = req.getParameter("password").toString();
 
        session.invalidate();
        user = loginService.checkLoginValidation(user_id, password);
        HttpSession newSession = req.getSession();
        newSession.setAttribute("user", user);
        newSession.setAttribute("user_id", user.getUser_id());
        
        try {
            if (user == null) {
                req.setAttribute("isLogin", false);
                modelMap.addAttribute("error_msg", "Please check your login information.");
                res.sendRedirect("/login");
            } else {
                req.setAttribute("isLogin", true);
                res.sendRedirect("/index");
            }
        } catch (Exception e) {
            e.printStackTrace();
            res.setHeader("status", "500");
        }
    }

}
