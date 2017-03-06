/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.controllers;

import com.ibm.gbs.gbs_cai_web.vo.Message;
import com.ibm.gbs.gbs_cai_web.vo.OutputMessage;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.messaging.simp.SimpMessagingTemplate;

/**
 *
 * @author kr055045
 */
@Controller
public class ChatController {
    private SimpMessagingTemplate template;
    
    @Autowired
    public ChatController(SimpMessagingTemplate template) {
    this.template = template;
  }
    @MessageMapping("/chat/{class_id}")
   // @SendTo("/topic/message/{class_id}") //<- substript path
    public void sendMessage(@DestinationVariable String class_id, Message message) {
        OutputMessage outMsg =  new OutputMessage(message, new Date());
        System.out.println(class_id);
        this.template.convertAndSend("/topic/message/"+class_id, outMsg);
        //return new OutputMessage(message, new Date());
        
    }

}
