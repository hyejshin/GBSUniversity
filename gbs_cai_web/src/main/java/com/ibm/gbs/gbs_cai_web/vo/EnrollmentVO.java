/**
 * File         : EnrollmentVO.java
 * author       : Joosang Kim
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
    private String class_id;
    private String class_title;
    private String booth_name;
    private String start;
    private String end;

    //default contructor
    public EnrollmentVO() {
    };
    
    /**
     *  Author   : Joosang Kim
     *  Detail   : Contructor for getEnrollmentByUserid-EnrollmentService.class
     */
    public EnrollmentVO(int idx, String user_id, String class_id, String class_title, String booth_name, String start, String end) {
        this.idx = idx;
        this.user_id = user_id;
        this.class_id = class_id;
        this.class_title = class_title;
        this.booth_name = booth_name;
        this.start = start;
        this.end = end;
    };
    
    //getter and setter - auto generated

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

    public String getClass_id() {
        return class_id;
    }

    public void setClass_id(String class_id) {
        this.class_id = class_id;
    }

    public String getBooth_name() {
        return booth_name;
    }

    public void setBooth_id(String booth_name) {
        this.booth_name = booth_name;
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

    public String getClass_title() {
        return class_title;
    }

    public void setClass_title(String class_title) {
        this.class_title = class_title;
    }

}
