package com.ibm.gbs.gbs_cai_web.vo;

import java.io.Serializable;
import java.util.Date;

public class ClassVO implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private int idx;
	private int capacity;
	
	private String class_id;
	private String title;
	private String teacher;
	private String booth;
	private String start;
	private String end;
	private String detail;
	
	private String atta1;
	private String atta2;
	private String atta3;
	private String atta4;
	private String atta5;
	private String use_yn;
	
	private String date;
	
	public int getIdx() {
		return idx;
	}
	
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getClass_id() {
		return class_id;
	}
	public void setClass_id(String class_id) {
		this.class_id = class_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

	public String getBooth() {
		return booth;
	}
	public void setBooth(String booth) {
		this.booth = booth;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getAtta1() {
		return atta1;
	}
	public void setAtta1(String atta1) {
		this.atta1 = atta1;
	}
	public String getAtta2() {
		return atta2;
	}
	public void setAtta2(String atta2) {
		this.atta2 = atta2;
	}
	public String getAtta3() {
		return atta3;
	}
	public void setAtta3(String atta3) {
		this.atta3 = atta3;
	}
	public String getAtta4() {
		return atta4;
	}
	public void setAtta4(String atta4) {
		this.atta4 = atta4;
	}
	public String getAtta5() {
		return atta5;
	}
	public void setAtta5(String atta5) {
		this.atta5 = atta5;
	}
	public String getUse_yn() {
		return use_yn;
	}
	public void setUse_yn(String use_yn) {
		this.use_yn = use_yn;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	@Override
	public String toString() {
		return "ClassVO [idx=" + idx + ", class_id=" + class_id + ", title=" + title + ", booth=" + booth + ", start="
				+ start + ", end=" + end + ", capacity=" + capacity + ", detail=" + detail + ", atta1=" + atta1
				+ ", atta2=" + atta2 + ", atta3=" + atta3 + ", atta4=" + atta4 + ", atta5=" + atta5 + ", use_yn="
				+ use_yn + ", date=" + date + "]";
	}
}
