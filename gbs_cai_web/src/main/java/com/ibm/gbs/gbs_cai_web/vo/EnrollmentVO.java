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
    private String morning_room;
    private String session1;
    private String session2;
    private String session3;
    private String room1;
    private String room2;
    private String room3;

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

	public String getMorning_room() {
		return morning_room;
	}

	public void setMorning_room(String morning_room) {
		this.morning_room = morning_room;
	}

	public String getSession1() {
		return session1;
	}

	public void setSession1(String session1) {
		this.session1 = session1;
	}

	public String getSession2() {
		return session2;
	}

	public void setSession2(String session2) {
		this.session2 = session2;
	}

	public String getSession3() {
		return session3;
	}

	public void setSession3(String session3) {
		this.session3 = session3;
	}

	public String getRoom1() {
		return room1;
	}

	public void setRoom1(String room1) {
		this.room1 = room1;
	}

	public String getRoom2() {
		return room2;
	}

	public void setRoom2(String room2) {
		this.room2 = room2;
	}

	public String getRoom3() {
		return room3;
	}

	public void setRoom3(String room3) {
		this.room3 = room3;
	}
   
    
}
