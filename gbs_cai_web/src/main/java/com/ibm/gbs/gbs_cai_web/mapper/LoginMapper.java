/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.mapper;

import com.ibm.gbs.gbs_cai_web.vo.UserVO;

/**
 * DAO Mapper
 * Author: Joosang Kim
 * Editor: HyeJung Shin
 * version : 0.0.1
 */
public interface LoginMapper {
           
    public UserVO LoginByUserId(String user_id);
    
}
