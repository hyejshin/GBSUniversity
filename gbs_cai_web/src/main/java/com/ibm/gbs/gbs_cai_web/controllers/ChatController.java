/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.controllers;

import com.ibm.gbs.gbs_cai_web.vo.Message;
import com.ibm.gbs.gbs_cai_web.vo.OutputMessage;
import java.util.Date;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

/**
 *
 * @author kr055045
 */
@Controller
public class ChatController {
  @MessageMapping("/chat")
  @SendTo("/topic/message")
  public OutputMessage sendMessage(Message message) {
      System.out.println(message);
      System.out.println(message.getMessage() + ", " +message.getUser_nm());
    return new OutputMessage(message, new Date());
  }
    
}
