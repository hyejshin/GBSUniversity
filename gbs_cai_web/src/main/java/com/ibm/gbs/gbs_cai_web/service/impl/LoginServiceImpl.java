/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.service.impl;

import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ibm.gbs.gbs_cai_web.mapper.LoginMapper;
import com.ibm.gbs.gbs_cai_web.service.LoginService;
import com.ibm.gbs.gbs_cai_web.vo.UserVO;

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
    public UserVO checkUserValidation(String user_id) {
        uservo =  loginMapper.LoginByUserId(user_id);
       
       return uservo;
    }

}
