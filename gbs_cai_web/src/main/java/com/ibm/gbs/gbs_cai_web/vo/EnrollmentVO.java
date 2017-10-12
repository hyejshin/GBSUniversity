/**
 * File         : EnrollmentVO.java
 * author       : HyeJung Shin
 * version      : 0.0.1
 * description  : enrollment value object
 */
package com.ibm.gbs.gbs_cai_web.vo;

import java.io.Serializable;
import org.springframework.stereotype.Repository;

@Repository("enrollmentvo")
public class EnrollmentVO implements Serializable {

	private static final long serialVersionUID = 1L;

	private int idx;
	private String user_id;
	private String user_name;
	private String user_serial;
	private String depart_time;
	private String depart_place;
	private String room_type;
	private String room_num;

	public EnrollmentVO() {

	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_serial() {
		return user_serial;
	}

	public void setUser_serial(String user_serial) {
		this.user_serial = user_serial;
	}

	public String getDepart_time() {
		return depart_time;
	}

	public void setDepart_time(String depart_time) {
		this.depart_time = depart_time;
	}

	public String getDepart_place() {
		return depart_place;
	}

	public void setDepart_place(String depart_place) {
		this.depart_place = depart_place;
	}

	public String getRoom_type() {
		return room_type;
	}

	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}

	public String getRoom_num() {
		return room_num;
	}

	public void setRoom_num(String room_num) {
		this.room_num = room_num;
	}

}
