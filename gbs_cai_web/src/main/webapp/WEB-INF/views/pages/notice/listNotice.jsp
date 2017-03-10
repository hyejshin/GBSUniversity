<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<tiles:importAttribute name="innerLayout" />
<c:forEach var="innerLayout" items="${innerLayout}">
    <link type="text/css" rel="stylesheet" href="<c:url value="${innerLayout}"/>" />
</c:forEach>

<div class="container">		
		
        <h4>Announcement</h4>
        <br/>

		<button class="btn btn-info" onClick="location.href='/addNoticeView';">Write Notice</button>
		
        <table id="table" class="table table-striped table-condensed" cellspacing="0" width="100%">
			<tr style="background-color: #578CA9; color:white;">
				<td>No</td>
				<td>Content</td>
				<td width="10%"></td>
			</tr>
			
			<% int count = 1; %>
			<c:forEach items="${list}" var="vo">
				<tr>
					<td><%=count++%></td>
					<td>${vo.content}</td>
					<td><a href="/deleteNotice?idx=${vo.idx}">X</a></td>
				</tr>
				
			</c:forEach>
		</table>

    </div>

<c:if test="${vo.morning_room eq '7F, On-demand room'}">
</c:if>

<br><br><br><br>