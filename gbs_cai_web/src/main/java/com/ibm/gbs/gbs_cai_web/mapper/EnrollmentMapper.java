/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.mapper;

import com.ibm.gbs.gbs_cai_web.vo.EnrollmentVO;

/**
 *
 * @author kr055045
 */
public interface EnrollmentMapper {    
	public EnrollmentVO getEnrollmentById(String user_id);    
}