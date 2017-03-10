package com.ibm.gbs.gbs_cai_web.vo;

import java.io.Serializable;

public class NoticeVO implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private int idx;
	private String content;
	
	public int getIdx() {
		return idx;
	}
	
	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}

}
