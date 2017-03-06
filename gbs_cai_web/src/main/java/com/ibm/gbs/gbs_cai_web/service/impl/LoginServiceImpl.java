/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.service.impl;

import com.ibm.gbs.gbs_cai_web.mapper.LoginMapper;
import com.ibm.gbs.gbs_cai_web.service.LoginService;
import com.ibm.gbs.gbs_cai_web.vo.UserVO;
import javax.annotation.Resource;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author kr055045
 * @editor HyeJung Shin
 */

@Service("loginService")
public class LoginServiceImpl implements LoginService {

    @Resource(name = "uservo")
    private UserVO uservo;
    
    @Autowired
    private LoginMapper loginMapper;

    @Override
    public UserVO checkLoginValidation(String user_id, String password) {
        uservo =  loginMapper.LoginByUserInfo( user_id, password);
       
       return uservo;
    }
    
    public UserVO checkUserValidation(String user_id) {
        uservo =  loginMapper.LoginByUserId(user_id);
       
       return uservo;
    }

}
