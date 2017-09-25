package com.ibm.gbs.gbs_cai_web.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter @Setter
public class AttendVO {
	
	private int idx;
	private String user_id;
	private String class_id;
	private String attend_code;
	
}