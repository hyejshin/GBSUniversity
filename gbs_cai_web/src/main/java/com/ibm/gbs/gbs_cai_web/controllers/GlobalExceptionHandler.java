/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.controllers;

import java.io.IOException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;
import org.springframework.web.servlet.mvc.multiaction.NoSuchRequestHandlingMethodException;

/**
 *
 * @author kr055045
 */
@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(IOException.class)
    public ModelAndView myError(Exception exception) {
        System.out.println("----Caught IOException----");
        ModelAndView mav = new ModelAndView();
        mav.addObject("exception", exception);
        mav.setViewName("505Error");
        return mav;
    }

    @ExceptionHandler( NoHandlerFoundException.class)
    public String notFound(Exception exception) {
        System.out.println("----Caught 111KeywordNotFoundException----");
        exception.printStackTrace();
        return "404Error";
    }
    
    /**
     *
     * @param exception
     * @return
     */
    @ExceptionHandler( NoSuchRequestHandlingMethodException.class)
    public String noHandler(Exception exception) {
        
        System.out.println("----Caught 222KeywordNotFoundException----");
        return "404Error";
    }
    
    @ExceptionHandler( Exception.class)
    public String hadleException(Exception exception) {
        exception.printStackTrace();
        System.out.println("----Caught 333KeywordNotFoundException----");
        return "404Error";
    }

}
