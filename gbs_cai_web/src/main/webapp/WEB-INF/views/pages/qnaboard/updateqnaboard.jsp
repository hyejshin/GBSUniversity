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

<div class="container">		
		
     <h4><a href="/listqnaboard">Q & A</a></h4>
     <br/>

		<form class="form-horizontal" name="myForm" method="POST" action="/updateqna">
			<input type="hidden" id="idx" name="idx" value=${vo.idx}>
			<input type="text" id="writer" name="writer" value=${vo.writer}>
			<input type="text" id="title" name="title" value=${vo.title} style="width:90%;">
			<textarea class="input-xlarge textarea" name="content" rows="10" 
			style="width:90%; height:90%;">${vo.content}</textarea>
		
			<br/><br/>
			<input class="btn btn-info" type="submit" value="Submit">
			
		</form>

</div>

<br><br><br><br>