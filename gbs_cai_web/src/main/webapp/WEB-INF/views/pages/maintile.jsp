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
<table class="table" style="border-collapse: separate; border-spacing: 3px 5px; padding:5px;">
    <thead>
        <tr>
            <th colspan="2" style="height: 130px; text-align: center; vertical-align:middle; background-color: #3b9c9c; ">
            <a href="/index" style="text-decoration:none;">CAI Univ Agenda</a></th>
           </tr>
    </thead>
    <tbody>
        <tr style="height: 100px; text-align: center; vertical-align:middle;">
            
            <td style="width: 50%; text-align: center; vertical-align:middle; background-color: #CC0099; color:#fff;">
            <a href="/myLecture?user_id=<%=user_id2%>" style="text-decoration:none;">My Enrollment</a></td>
            <td style="width: 50%;text-align: center; vertical-align:middle; background-color: #330099; color:#fff;">
            <a href="/attend" style="text-decoration:none;">Attendance Check</a></td>
         
        </tr>
        <tr style="height: 100px; text-align: center; vertical-align:middle;">
            <td style="width: 50%;text-align: center; vertical-align:middle; background-color: #330099; color:#fff;">
            <a href="/roominfo" style="text-decoration:none;">Room Info</a></td>
            <td style="width: 50%;text-align: center; vertical-align:middle; background-color: #CCCC99; color:#fff;">
            <a href="https://www.ifcmallseoul.com/eng/jsp/store/floorInfo.do?lang=e&floor=L3" style="text-decoration:none;">Lunch Places</a></td>
            
        </tr>
    </tbody>
    <thead>
        <tr style="height: 130px; text-align: center; vertical-align:middle;">
            <th colspan="2" style="text-align: center; vertical-align:middle; background-color: #CC9900;">
            <a  id="openModal" style="text-decoration:none;">
            Conrad Hotel</a></th>
    
        </tr>
           
    </thead>
    <div id ="my-dialog">
        <button id="btn-close-modal">X</button>
        <div id="map" style="width:100%;height:100%;"></div>
    </div>
    <div id="dialog-background"></div>
         
    
</table>
