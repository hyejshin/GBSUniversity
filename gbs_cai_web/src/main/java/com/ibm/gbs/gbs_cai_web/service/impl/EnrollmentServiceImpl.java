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
import com.ibm.gbs.gbs_cai_web.vo.BusVO;
import com.ibm.gbs.gbs_cai_web.vo.RoomVO;

@Service("enrollmentService")
public class EnrollmentServiceImpl implements EnrollmentService {

	@Autowired
	private EnrollmentMapper enrollmentMapper;

	@Override
	public RoomVO getRoomInfoById(String user_id) {
		return enrollmentMapper.getRoominfoById(user_id);
	}

	@Override
	public BusVO getBusInfoById(String user_id) {
		return enrollmentMapper.getBusInfoById(user_id);
	}

}
