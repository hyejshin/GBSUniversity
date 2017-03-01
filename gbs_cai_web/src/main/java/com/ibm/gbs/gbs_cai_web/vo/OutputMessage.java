/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.vo;

import java.util.Date;

/**
 *
 * @author kr055045
 */
public class OutputMessage extends Message {
    private Date time;
    
    public OutputMessage(Message original, Date time) {
        super(original.getId(), original.getMessage(), original.getUser_nm());
        this.time = time;
    }
    
    public Date getTime() {
        return time;
    }
    
    public void setTime(Date time) {
        this.time = time;
    }
    
    
}
