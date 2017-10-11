<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page session="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<tiles:importAttribute name="innerLayout" />
<c:forEach var="innerLayout" items="${innerLayout}">
    <link type="text/css" rel="stylesheet" href="<c:url value="${innerLayout}"/>" />
</c:forEach>

<%
HttpSession session1 = request.getSession();
String user_id = (String)session1.getAttribute("user_id");
%>

<c:set var="user" value="<%=user_id%>"/>
<div class="container">		
	<br>
     <h4><a href='/listqnaboard'>Q & A</a></h4> <br>
		<!-- 게시글 -->
        <table id="table" cellspacing="1" width="100%" border='1'>
			<tr><td>${vo.writer}</td><td>${vo.time}</td></tr>
			<tr><td colspan='2'>${vo.title}</td></tr>
			<tr height="100"><td colspan='2'>${vo.content}</td></tr>
			<tr><td colspan='2'><a href="/filedown?file_id=${vo.file_id}">${vo.file_nm}</a></td></tr>
		</table>
		
		<c:if test="${user == vo.writer}">
			<a href="/updateqnaboardView?idx=${vo.idx}">수정 </a> |
			<a href="/deleteqna?idx=${vo.idx}"> 삭제</a>
		</c:if>
		
		<!-- 댓글 -->
		<table id="table" class="table table-striped table-condensed" cellspacing="0" width="100%">
			<c:forEach items="${list}" var="c">
				<tr>
					<td>${c.writer}</td>
					<td>${c.time}</td>
					<td>
						<c:if test="${user == c.writer}">
							<a href="/deleteqnacomment?idx=${c.idx}&org=${vo.idx}">X</a>
						</c:if>
					</td>
				</tr>
				<tr>
					<td colspan="3">${c.content}</td>
				</tr>
			</c:forEach>
		</table>

		<form class="form-horizontal" name="myForm" method="POST" action="/addqnacomment">
			<input type="hidden" id="idx" name="idx" value=${vo.idx} >
			<input type="hidden" id="writer" name="writer" value=<%=user_id%>>
			<input type="text" id="content" name="content" style="width:90%;">
			<input type="submit" value="Submit">
		</form>

</div>

<br><br><br><br>