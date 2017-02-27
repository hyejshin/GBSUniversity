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
    private String board_id;
    private String class_id;
    private String title;
    private String user_id;
    private String user_nm;
    private String detail;
    private String type;
    private int step;
    private int indent;
    private String date;

    //default contructor
    public BoardVO() {
    } ;
    
    /**
     *  Author   : Joosang Kim
     *  Detail   : Contructor for getBoardListByClassId-EnrollmentService.class
     *             VO for lists
     */
    public BoardVO(int idx, String board_id, String class_id, String title,
             String user_id, String user_nm, String type,
             int step, String date) {
        this.idx = idx;
        this.user_id = user_id;
        this.class_id = class_id;
        this.title = title;
        this.user_id = user_id;
        this.user_nm = user_nm;
        this.detail = detail;
        this.type = type;
        this.step = step;
        this.date = date;
    };
    
    /**
     *  Author   : Joosang Kim
     *  Detail   : Contructor for getBoardListByClassId-EnrollmentService.class
     *             VO for detail
     */
    public BoardVO(int idx, String board_id, String class_id, String tilte,
             String user_id, String user_nm, String detail, String type,
             int step,  String date) {
        this.idx = idx;
        this.user_id = user_id;
        this.class_id = class_id;
        this.title = title;
        this.user_id = user_id;
        this.user_nm = user_nm;
        this.detail = detail;
        this.type = type;
        this.step = step;
        this.indent = indent;
        this.date = date;
    };
    
    
    
    
    public String getTitle() {
        return title;
    }

    //getter and setter - auto generated.
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getIdx() {
        return idx;
    }

    public void setIdx(int idx) {
        this.idx = idx;
    }

    public String getBoard_id() {
        return board_id;
    }

    public void setBoard_id(String board_id) {
        this.board_id = board_id;
    }

    public String getClass_id() {
        return class_id;
    }

    public void setClass_id(String class_id) {
        this.class_id = class_id;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public String getUser_nm() {
        return user_nm;
    }

    public void setUser_nm(String user_nm) {
        this.user_nm = user_nm;
    }
}
