/**
 * File         : BoardVO.java
 * author       : Joosang Kim
 * version      : 0.0.1
 * description  : boards value object
 */
package com.ibm.gbs.gbs_cai_web.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;

@Repository("boardvo")
public class BoardVO implements Serializable {

	private static final long serialVersionUID = 1L;

	private int idx;

	private String title;
	private String user_id;
	private String detail;
	private String crt_dttm;
	private String mod_dttm;
	private String file_nm;
	private String file_id;

	private int step;
	private int indent;
	private String date;
	int cm_idx;
	String comments;

	public String getFile_nm() {
		return file_nm;
	}

	public void setFile_nm(String file_nm) {
		this.file_nm = file_nm;
	}

	String cm_author;

	public BoardVO(String title, String user_id, String detail) {

		this.title = title;
		this.user_id = user_id;
		this.detail = detail;
	}

	public BoardVO(int idx) {
		this.idx = idx;
	}

	public BoardVO() {

	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getCrt_dttm() {
		return crt_dttm;
	}

	public void setCrt_dttm(String crt_dttm) {
		this.crt_dttm = crt_dttm;
	}

	public String getMod_dttm() {
		return mod_dttm;
	}

	public void setMod_dttm(String mod_dttm) {
		this.mod_dttm = mod_dttm;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public int getIndent() {
		return indent;
	}

	public void setIndent(int indent) {
		this.indent = indent;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getCm_idx() {
		return cm_idx;
	}

	public void setCm_idx(int cm_idx) {
		this.cm_idx = cm_idx;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getCm_author() {
		return cm_author;
	}

	public void setCm_author(String cm_author) {
		this.cm_author = cm_author;
	}

	public String getFile_id() {
		return file_id;
	}

	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}

}
