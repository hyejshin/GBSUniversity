/**
 * File         : CaiWebInitializer.java
 * author       : Joosang Kim
 * version      : 0.0.1
 * description  : intializer
 */
package com.ibm.gbs.gbs_cai_web.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
 
public class AppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[] { AppConfig.class , DataConfig.class};
    }
  
    @Override
    protected Class<?>[] getServletConfigClasses() {
        return null;
    }
  
    @Override
    protected String[] getServletMappings() {
        return new String[] { "/" };
    }
 
    
}