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
import javax.servlet.http.HttpSession;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 *
 * @author kr055045
 */
public class AuthInterceptor extends HandlerInterceptorAdapter {

    //protected Log log = LogFactory.getLog(AuthInterceptor.class);
    @Override
    public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object o) throws Exception {
        HttpSession session = req.getSession();

        if (session.getAttribute("user") == null) {
            res.sendRedirect("/login");
            return false;
        }

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest hsr, HttpServletResponse hsr1,
            Object o, ModelAndView mav) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest hsr, HttpServletResponse hsr1,
            Object o, Exception excptn) throws Exception {

    }

}
