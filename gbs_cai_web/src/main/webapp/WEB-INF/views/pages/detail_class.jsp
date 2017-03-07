<%@page import="com.ibm.gbs.gbs_cai_web.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<tiles:importAttribute name="showDetailAttributes" />
<tiles:importAttribute name="showDetailJsAttributes" />
<c:forEach var="showDetailAttributes" items="${showDetailAttributes}">
    <link type="text/css" rel="stylesheet" href='<c:url value="${showDetailAttributes}"/>' media="all"/>
</c:forEach>
<c:forEach var="showDetailJsAttributes" items="${showDetailJsAttributes}">
    <script src='<c:url value="${showDetailJsAttributes}"/>'></script>
</c:forEach>

<div class="container">		 

    <%HttpSession session1 = request.getSession();%>

    <input type="hidden" id="user_id" value=<%= session1.getAttribute("user_id")%> />
    <input type="hidden" id="start" value=${list.start} />

    <div class="work">
        <div class="details">		 
            <div class="col-md-7 posts">
                <h3 style="font-weight:600;">${vo.title}</h3>
                <p>Speaker: ${vo.speaker}</p>
                <p>Date : Saturday, 11 March 2017</p>
                <p>Time : ${vo.session} <span>Room: ${vo.room}</span></p><br>
            </div>	
            <div class="col-md-3 date" style="padding:0px;">
                <p style="padding: 8px 0px;">WHAT</p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="details">			 
            <div class="col-md-7 posts">
                <h4>ABOUT THIS SESSION</h4>
                <p>${vo.detail}</p>	
            </div>	
            <div class="col-md-3 date" style="padding:0px;">
                <p style="padding: 8px 0px;">WHO</p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="details">

            <div class="col-md-7 posts">
                <h4>ABOUT THE SPEAKER</h4>
                <div class="img-responsive" style="float:left;"><img src="/images/speaker/${vo.speaker_img}" alt="img"/></div>
                <p>${vo.speaker}</p></div>	
            <div class="clearfix"></div>
        </div>
    </div>

    <%
        HttpSession sess = request.getSession();
        UserVO user = (UserVO) sess.getAttribute("user");
    %>
    <div id="detail">
        <div class="work">
            <div class="details">		 
                <div class="col-md-7 posts">
                    <h3 style="font-weight:600; font-style: italic;">${vo.title}</h3>
                    <p><h5>Speaker: ${vo.speaker}</h5></p>
                    <p><h7>Date : Saturday, 11 March 2017</h7></p>
                    <p><h7>Time : ${vo.session}<span>Room: ${vo.room}</span></h7></p><br>
                </div>	
                <div class="col-md-3 date" style="padding:0px;">
                    <p style="padding: 8px 0px;">WHAT</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="details">			 
                <div class="col-md-7 posts">
                    <h4>ABOUT THIS SESSION</h4>
                    <p>${vo.detail}</p>
                </div>	
                <div class="col-md-3 date" style="padding:0px;">
                    <p style="padding: 8px 0px;">WHO</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="details">
                <div class="col-md-7 posts">
                    <h4>ABOUT THE SPEACKER</h4>
                    <div class="img-responsive" style="float:left;"><img src="" alt="img"/>${vo.speaker_img}</div>
                    <p>${vo.speaker}</p></div>	
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>

<div id="boardDiv">
    <h3>Question Board</h3>
    <div class="info">
        <table class="table table-striped" id="class-board" style="background-color: D8D8D8;">
            <thead>
                <tr>
                    <th style="text-align: center;">NO</th>
                    <th style="text-align: center;">TITLE</th>
                    <th colspan="2" style="text-align: center;">WRITER</th>
                </tr>
            </thead>
            <tbody id="board-body"></tbody>
            <tfoot>
                <tr>
                    <td align="center" colspan="5">1</td>
                </tr>
            </tfoot>
        </table>
    </div>
    <div id="writenew" >
        <table summary="Ask Question">
            <section class="box">
                <form name="BoardWriteForm" id="BoardWriteForm" action="/board/postQuestion" method="POST">
                    <table class="table" summary="테이블 구성" >
                        <caption>Ask Question</caption>	
                        <tr>
                            <td>Writer</td>
                            <td><input type="text" name="user_nm" size=30 value="<%=session1.getAttribute("user_nm")%>" readonly></td>
                        </tr>
                        <tr>
                            <td>Question</td>
                            <td><textarea name="detail" cols="30" rows="8" style="overflow-y:scroll; resize:none; "></textarea></td>
                        </tr>
                        <tr>
                            <td colspan=2><hr size=1></td>
                        </tr>
                        <tr>
                            <td colspan="2"><div align="center">
                                    <input type="submit" id="submit" value="Write" class="btn btn-info">&nbsp;&nbsp;
                                    <input type="button" value="Cancel" class="btn btn-danger" >

                                </div>
                            </td>
                        </tr> 
                    </table>
                    <input type="hidden" name="user_id"  value=<%=session1.getAttribute("user_id")%> />
                    <input type="hidden" name="class_id" id="class_id" value=${vo.class_id} />
                    <input type="hidden" name="board_id" id="board_id" value=${board_id} />
                    <%
                        String type = user.getType();
                    %>
                    <input type="hidden" id="type" name="type" value="<%=type%>"/>

                </form> 
            </section>
        </table>

    </div>
    <input type="button" id="showQnA" class="btn btn-info" value="Show Q&A" />
    <input type="button" id="showList" class="btn btn-info" value="Show Class Detail" />
</div>
