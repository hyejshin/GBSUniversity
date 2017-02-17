/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.service;

import com.ibm.gbs.gbs_cai_web.vo.UserVO;
/**
 *
 * @author kr055045
 */
public interface UserService {
    
    public UserVO getUserById(String userId);
    
}
