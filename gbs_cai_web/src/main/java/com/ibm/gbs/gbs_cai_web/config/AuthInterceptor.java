/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.ibm.gbs.gbs_cai_web.vo.UserVO;

/**
 *
 * @author kr055045
 */
public class AuthInterceptor implements HandlerInterceptor{

    @Override
    public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object o) throws Exception {
        UserVO user = new UserVO();
        System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%PRE%%%%%%%%%%%%%%%%%%%%%");
        if(req.getSession().getAttribute("userInfo") != null){
            res.sendRedirect("/gbs_cai_web/index");
            return false;
        }else {
            res.sendRedirect("/gbs_cai_web/login");
            return true;    
        }
        
    }

    @Override
    public void postHandle(HttpServletRequest hsr, HttpServletResponse hsr1, Object o, ModelAndView mav) throws Exception {
       
    }

    @Override
    public void afterCompletion(HttpServletRequest hsr, HttpServletResponse hsr1, Object o, Exception excptn) throws Exception {
      
    }   
    
}
