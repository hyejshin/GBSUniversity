/**
 * File         : EnrollementService.java
 * author       : HyeJung Shin
 * version      : 0.0.1
 * description  : enrollment service for this web app
 */
package com.ibm.gbs.gbs_cai_web.service;

import com.ibm.gbs.gbs_cai_web.vo.BusVO;
import com.ibm.gbs.gbs_cai_web.vo.RoomVO;

public interface EnrollmentService {
	
	public RoomVO getRoomInfoById(String user_id);
	
	public BusVO getBusInfoById(String user_id);

}