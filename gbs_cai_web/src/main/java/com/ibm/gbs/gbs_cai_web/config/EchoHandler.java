/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.handler.TextWebSocketHandler;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.web.socket.config.annotation.EnableWebSocket;

/**
 *
 * @author kr055045
 */
@Configuration
public class EchoHandler extends TextWebSocketHandler {

    private Map<String, WebSocketSession> sessions = new HashMap<String, WebSocketSession>();
    private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();

    /**
     * after connect server(client)
     */
    @Override
    public void afterConnectionEstablished(WebSocketSession session)
            throws Exception {
        //enlisted in map
        sessions.put(session.getId(), session);

        //enlisted in list
        sessionList.add(session);
    }

    /**
     * send message
     */
    @Override
    protected void handleTextMessage(WebSocketSession session,TextMessage message) throws Exception {

        //배열이면 많이 쓸수 있고, 쓰지않으면 최대 2개임여
        /*logger.info("{}와 부터 {}받음",new String[] {session.getId(), message.getPayload()});*/
        //연결되어있는 모든 클라이언트들에게 메시지를 전송한다 
        //session.sendMessage(new TextMessage("echo:" + message.getPayload()));
        for (WebSocketSession sess : sessionList) {
            sess.sendMessage(new TextMessage("echo: " + message.getPayload()));
        }

        /*map사용
        Interator<String> sessionIds = sessions.keySet().iterator();
        String sessionId="";
        while(sessionIds.hasNext()){s
            sessionId = sessionIds.next();
            sessions.get(sessionId).sendMessaget(new TextMessage("echo:" + message.getPayload()));
            
        }*/
    }

    /**
     * 클라이언트가 연결을 끊었을 때 실행되는 메소드
     */
    @Override
    public void afterConnectionClosed(WebSocketSession session,
            CloseStatus status) throws Exception {
        //list
        sessionList.remove(session);
        //map
        //sessions.remove(session.getId());
    }

}
