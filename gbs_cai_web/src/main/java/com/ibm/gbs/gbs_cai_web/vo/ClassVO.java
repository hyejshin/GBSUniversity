package com.ibm.gbs.gbs_cai_web.vo;

import java.io.Serializable;

public class ClassVO implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private int idx;
	private String class_id;
	private String title;
	private String room;
	private String speaker;
	private String session;
	private int capacity;
	private String detail;
	private String speaker_img;
	private String attend_code;
        private String start;
        private String end;
	
	public ClassVO() {}
        public ClassVO(String class_id, String title, String room, String speaker, String session, int capacity, String detail, String speaker_img){
            this.class_id = class_id;
            this.title    = title;
            this.room     = room;
            this.speaker  = speaker;
            this.session  = session;
            this.capacity = capacity;
            this.detail   = detail;
            this.speaker_img = speaker_img;
            
        };
        public ClassVO(String class_id, String title, String room, String speaker, String session, int capacity
                    , String detail, String speaker_img, String attend_code, String start, String end){
            this.class_id = class_id;
            this.title    = title;
            this.room     = room;
            this.speaker  = speaker;
            this.session  = session;
            this.capacity = capacity;
            this.detail   = detail;
            this.speaker_img = speaker_img;
            this.attend_code = attend_code;
            this.start = start;
            this.end =end;
            
        };
	
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

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public String getSpeaker() {
		return speaker;
	}

	public void setSpeaker(String speaker) {
		this.speaker = speaker;
	}

	public String getSession() {
		return session;
	}

	public void setSession(String session) {
		this.session = session;
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

	public String getSpeaker_img() {
		return speaker_img;
	}

	public void setSpeaker_img(String speaker_img) {
		this.speaker_img = speaker_img;
	}

	public String getAttend_code() {
		return attend_code;
	}

	public void setAttend_code(String attend_code) {
		this.attend_code = attend_code;
	}
	
	
	
	
//	@Override
//	public String toString() {
//		return "ClassVO [idx=" + idx + ", class_id=" + class_id + ", title=" + title + ", booth=" + booth + ", start="
//				+ start + ", end=" + end + ", capacity=" + capacity + ", detail=" + detail + ", atta1=" + atta1
//				+ ", atta2=" + atta2 + ", atta3=" + atta3 + ", use_yn="
//				+ use_yn + ", date=" + date + "]";
//	}

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
}
