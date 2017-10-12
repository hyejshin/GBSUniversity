/**
 * File         : EnrollementService.java
 * author       : HyeJung Shin
 * version      : 0.0.1
 * description  : enrollment service for this web app
 */
package com.ibm.gbs.gbs_cai_web.service;

import com.ibm.gbs.gbs_cai_web.vo.EnrollmentVO;

public interface EnrollmentService {

	public EnrollmentVO getEnrollmentById(String user_id) throws Exception;

}