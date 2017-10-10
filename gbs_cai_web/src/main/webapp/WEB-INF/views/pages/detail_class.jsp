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

<style type="text/css" >
.wrap-loading{ 
    position: fixed;
    left:0;
    right:0;
    top:0;
    bottom:0;
    background: rgba(0,0,0,0.2); /*not in ie */
    filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#20000000', endColorstr='#20000000');    /* ie */
    
}
    .wrap-loading div{ 
        position: fixed;
        top:50%;
        left:50%;
        margin-left: -21px;
        margin-top: -21px;
    }
    .display-none{ 
        display:none;
    }
        
</style>
 
<div class="wrap-loading display-none">
    <div><img src="/images/ajax-loader.gif" /></div>
</div>

<div id="class-detail-div" class="container">		 

    <%
        HttpSession session1 = request.getSession();
        String tempStr = (String)session1.getAttribute("user_nm");
        String[] nameArr = tempStr.split("/");
        String user_nm = nameArr[0];
    %>

    <input type="hidden" id="user_id" value=<%= session1.getAttribute("user_id")%> />
    <input type="hidden" id="start" value=${list.start} />

    <div class="work">
        <div class="details">		 
            <div class="col-md-7 posts">
                <h3 style="font-weight:600;">${vo.title}</h3>
                <p>Speaker: ${vo.speaker}</p>
                <p>Date : Saturday, 11 March 2017</p>
                <p>Time : ${vo.session}</p>
                <p>Room: ${vo.room}</p>
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
                <div class="img-responsive" style="float:left;"><img src="/images/speaker/${vo.speaker_img}" alt="img" width="140"/></div>
                 <p>${vo.speaker}</p></div>	
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<%
    HttpSession sess = request.getSession();
    UserVO user = (UserVO) sess.getAttribute("user");
%>


<div class="container" >
    <div id="boardDiv">

        <h3>Question Board</h3>
        <div class="info">
            <table class="table table-striped" id="class-board" style="background-color: D8D8D8;">
                <thead>
                    <tr>
                        <th style="text-align: center;">NO</th>
                        <th style="text-align: center;">TITLE</th>
                        <th style="text-align: center;" colspan="2">WRITER</th>
                    </tr>
                </thead>
                <tbody id="board-body" style="text-align:justify;">
                <p></p></tbody>
                <tfoot>
                    <tr>
                        <td id="pagenation" align="center" colspan="5">1</td>
                    </tr>
                </tfoot>
            </table>
        </div>

        <div id="writenew" >
            <table summary="Ask Question">
                <section class="box">
                    <form name="BoardWriteForm" class="form-horizontal" id="BoardWriteForm" >
                        <table class="table" summary="테이블 구성" >
                            <caption>Ask Question</caption>	
                            <tr>
                                <td>Writer</td>
                                <td><input id="writer_nm" type="text" name="user_nm" class="form-control" value="<%=user_nm%>" readonly></td>
                            </tr>
                            <tr>
                                <td>Question</td>
                                <td><textarea id="addPostDetail" name="detail"class="form-control" rows="8" style="overflow-y:scroll; resize:none; "></textarea></td>
                            </tr>
                            <tr>
                                <td colspan=2><hr size=1></td>
                            </tr>
                            <tr>
                                <td colspan="2"><div align="center">
                                        <input type="button" id="submit" value="Write" class="btn btn-info"><input type="button" id="cancel" style="marign-left:3px;" value="Cancel" class="btn btn-danger">

                                    </div>
                                </td>
                            </tr> 
                        </table>
                        <input type="hidden" name="user_id"  value=<%=session1.getAttribute("user_id")%> />
                        <input type="hidden" name="class_id" id="class_id" value=${vo.class_id} />
                        <input type="hidden" name="board_id" id="board_id" value=${board_id} />
                       <%--  <%
                            String type = user.getType();
                        %>
                        <input type="hidden" id="type" name="type" value="<%=type%>"/> --%>
                        <input type="hidden" id="idx"  name="idx" value=""/>

                    </form> 
                </section>
            </table>

        </div>
        <input type="button" id="showQnA" class="btn btn-info" value="Show Q&A" />
        <input type="button" id="showList" class="btn btn-default" value="Show Class Detail" />
    </div>
</div>
<br><br><br>


