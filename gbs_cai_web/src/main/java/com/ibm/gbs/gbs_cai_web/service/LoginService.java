/**
 * File         : LoginService.java
 * author       : Joosang Kim
 * editor		: HyeJung Shin
 * version      : 0.0.1
 * description  : login service for this web app
 */
package com.ibm.gbs.gbs_cai_web.service;

import com.ibm.gbs.gbs_cai_web.vo.UserVO;
import org.apache.ibatis.annotations.Param;


public interface LoginService {
    /**
     * check user validation using userid & password
     * return - true : uservo(null)
     */
    public UserVO checkLoginValidation(String user_id, String password);
    
    public UserVO checkUserValidation(String user_id);
}
