/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.gbs.gbs_cai_web.mapper.EnrollmentMapper;
import com.ibm.gbs.gbs_cai_web.service.EnrollmentService;
import com.ibm.gbs.gbs_cai_web.vo.EnrollmentVO;
import java.util.List;

@Service("enrollmentService")
public class EnrollmentServiceImpl implements EnrollmentService{

    @Autowired
    private EnrollmentMapper enrollmentMapper;
    
    @Override
    public EnrollmentVO getEnrollmentByUserId(String user_id) {
        return enrollmentMapper.getEnrollmentByUserId(user_id);
    }

//    @Override
//    public List<EnrollmentVO> getEnrollmentByUserid(String user_id) {
//        return enrollmentMapper.getEnrollmentByUserId(user_id);
//    }
    
  
}
