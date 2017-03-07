/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.vo;

import java.io.Serializable;
import org.springframework.stereotype.Repository;

/**
 *
 * @author kr055045
 */
@Repository("commentvo")
public class CommentVO {
    private static final long serialVersionUID = 1L;

    private int idx;
    private String class_id;
    private String board_id;
    private int ref_idx;
    private String detail;
    private String user_id;
    
    public CommentVO(){};
    public CommentVO(String class_id, String board_id, int ref_idx, String detail, String user_id){
        this.class_id = class_id;
        this.board_id = board_id;
        this.detail   = detail;
        this.ref_idx  = ref_idx;
        this.user_id  = user_id;
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

    public String getBoard_id() {
        return board_id;
    }

    public void setBoard_id(String board_id) {
        this.board_id = board_id;
    }

    public int getRef_idx() {
        return ref_idx;
    }

    public void setRef_idx(int ref_idx) {
        this.ref_idx = ref_idx;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
    
    
    
    
}
