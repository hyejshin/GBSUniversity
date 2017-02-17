/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.service;

import com.ibm.gbs.gbs_cai_web.vo.UserVO;
import java.util.List;
import org.springframework.stereotype.Service;
import com.ibm.gbs.gbs_cai_web.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author kr055045
 */
@Service("userService")
public class UserServieImpl implements UserService{
    
    @Autowired
    private UserMapper userMapper;

    @Override
    public UserVO getUserById(String userId) {
        return userMapper.getUserById("test");
       // return userMapper.getUserById("test");
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
