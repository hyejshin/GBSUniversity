/**
 * File         : BoardVO.java
 * author       : Joosang Kim
 * version      : 0.0.1
 * description  : boards value object
 */
package com.ibm.gbs.gbs_cai_web.vo;

import java.io.Serializable;
import org.springframework.stereotype.Repository;

@Repository("qnaboardvo")
public class QnaBoardVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private int idx;
    private int ref;
    private String title;
    private String content;
    private String writer;
    private String time;
    private int visit;
    private int count;
    
    private String file_nm;
	private String file_id;
	
	//default contructor
    public QnaBoardVO() {
    } ;

	public QnaBoardVO(int ref, String title, String content, String writer, String time, int visit) {
		this.ref = ref;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.time = time;
		this.visit = visit;
	}

    public String getFile_nm() {
		return file_nm;
	}


	public void setFile_nm(String file_nm) {
		this.file_nm = file_nm;
	}


	public String getFile_id() {
		return file_id;
	}


	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}   

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	};
    
    
    
}
