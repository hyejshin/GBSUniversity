<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
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

<div class="container">		
		
        <h4>Announcement</h4>
        <br/>
		
        <table id="table" class="table table-striped table-condensed" cellspacing="0" width="100%">
			<% int count = 1; %>
			<c:forEach items="${list}" var="vo">
				<tr>
					<td><%=count++%></td>
					<td>${vo.content}</td>
					<td>
						<%if(user_id.equals("ibmk0reagbs!")) {%>
							<a href="/deleteNotice?idx=${vo.idx}">X</a>
						<%}%>
					</td>
				</tr>
			</c:forEach>
		</table>
    </div>

<%
if(user_id.equals("ibmk0reagbs!")) {%>
   <button class="btn btn-info" onClick="location.href='/addNoticeView';">Write Notice</button>
<%}%>

<br><br><br><br>