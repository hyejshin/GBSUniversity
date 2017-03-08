<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<tiles:importAttribute name="maintileJs" />
<tiles:importAttribute name="maintileCss" />
<c:forEach var="maintileJs" items="${maintileJs}">
    <script src='<c:url value="${maintileJs}"/>'></script>
</c:forEach>
 <c:forEach var="maintileCss" items="${maintileCss}">
     <link type="text/css" rel="stylesheet" href='<c:url value="${maintileCss}"/>' media="all"/>
</c:forEach>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	HttpSession session2 = request.getSession();
	String user_id2 = (String)session2.getAttribute("user_id");
%>

<style>
	td {
		font-size: 130%;
	}
</style>

<img src="/images/cognitive.jpg" width="100%">
<table class="table" style="border-collapse: separate; border-spacing: 6px 6px; padding:2px;">
        <tr style="height:150px; text-align:center; vertical-align:middle;">
        	<td style="text-align:center; vertical-align:middle;" bgcolor="#F0CD5B" colspan="2">
            <a href="/index" style="text-decoration:none;">CAI Univ. Agenda</a></td>
            <td style="text-align:center; vertical-align:middle;" bgcolor="#95DEE3" colspan="2">

            <a href="/myLecture?user_id=<%=user_id2%>" style="text-decoration:none;">My Enrollment</a></td>
        </tr>

        <tr style="height:100px; text-align:center; vertical-align:middle;">
        	<td style="text-align:center; vertical-align:middle;" bgcolor="#EFD1C6" colspan="3">
            <a href="/attend" style="text-decoration:none;">Attendance Check</a></td>
            <td style="text-align:center; vertical-align:middle;" bgcolor="#578CA9" colspan="1">
            <a href="/roominfo" style="text-decoration:none;">Room Info</a></td>
        </tr>   

        <tr style="height:80px; text-align:center; vertical-align:middle;">
            <td style="text-align: center; vertical-align:middle;" bgcolor="#88B04B" colspan="3">
            <a href="#" id="openModal" style="text-decoration:none;">
            Conrad Hotel</a></td>
            <td style="text-align: center; vertical-align:middle;" bgcolor="#AE734E" colspan="1">
            <a href="https://www.ifcmallseoul.com/eng/jsp/store/floorInfo.do?lang=e&floor=L3">Lunch Time</a></td>
        </tr>
	</table>

    <div id ="my-dialog">
        <button id="btn-close-modal">X</button>
        <div id="map" style="width:100%;height:100%;"></div>
    </div>
    <div id="dialog-background"></div>
         


