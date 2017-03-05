/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.vo;

import java.io.Serializable;
import org.springframework.stereotype.Repository;


@Repository("uservo")
public class UserVO implements Serializable{

	private int idx;
    private String user_id;
    private String user_nm;
    private String password;
    private String type;
    
    public UserVO(){};
    public UserVO(String user_id, String user_nm, String password, String type) {
        this.user_id = user_id;
        this.user_nm = user_nm;
        this.password = password;
        this.type = type;
    }

    public UserVO(String user_id, String user_nm, String type) {
        this.user_id = user_id;
        this.user_nm = user_nm;
        this.type = type;
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
	
	public String getUser_nm() {
		return user_nm;
	}
	
	public void setUser_nm(String user_nm) {
		this.user_nm = user_nm;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}

}
