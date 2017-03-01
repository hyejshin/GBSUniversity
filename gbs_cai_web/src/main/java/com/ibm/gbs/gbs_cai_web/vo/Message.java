/*
 * Message VO
 */
package com.ibm.gbs.gbs_cai_web.vo;


public class Message {
    private String message;
    private String user_nm;
    private int    id;
    
    public Message(){};
    public Message(int id, String message, String user_nm){
        this.id = id;
        this.message= message;
        this.user_nm = user_nm;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getUser_nm() {
        return user_nm;
    }

    public void setUser_nm(String user_nm) {
        this.user_nm = user_nm;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    
}
