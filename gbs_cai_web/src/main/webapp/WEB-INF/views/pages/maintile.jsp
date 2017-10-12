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
	.container{
  		width:100%;
  		padding-right: 7px;
    	padding-left: 7px;
	}
</style>


<img src="/images/IBM_0.jpg" width="100%">

	<div class="container">
<table class="table" style="border-collapse: separate; width: 100%; border-spacing: 5px 5px; margin-top:3px;">

		<tr style="height:65px; text-align:center; vertical-align:middle;">
              <td colspan="2" style="text-align: center; vertical-align:middle;border-radius:2px;" bgcolor="#8CC739">
              <a href="#" style="color:white"><span class="glyphicon glyphicon-comment"></span>&nbsp;Talk Talk(to be opened)</a></td>
        </tr>
        
        <tr style="height:100px; text-align:center; vertical-align:middle;">
        	<td style="text-align:center; vertical-align:middle;border-radius:2px;" width="50%" bgcolor="#31C3E7">
            <a href="/index1" style="color:#ffffff;"><span class="glyphicon glyphicon-certificate"></span>&nbsp;Welcome</a></td>

            <td style="text-align:center; vertical-align:middle;border-radius:2px;" bgcolor="#a3daff">
            <a href="/ibmway" style="color:white"><span class="glyphicon glyphicon-book"></span>&nbsp;The IBM Way Handbook</a></td>
        </tr>

        <tr style="height:100px; text-align:center; vertical-align:middle;">
        	<td style="text-align:center; vertical-align:middle;border-radius:2px;" bgcolor="#085DAD">

            <a href="/index2" style="color:white"><span class="glyphicon glyphicon-calendar"></span>&nbsp;Agenda</a></td>
            <td style="text-align:center; vertical-align:middle;border-radius:2px;" bgcolor="#31C3E7">
            <a href="/myEnroll?user_id=<%=user_id2 %>" style="color:white"> <span class="glyphicon glyphicon-info-sign"></span>&nbsp;Bus/Room Info</a></td>
        </tr>   

        <tr style="height:100px; text-align:center; vertical-align:middle;">
            <td style="text-align: center; vertical-align:middle;border-radius:2px;" bgcolor="#ee2560">
            <a href="/listqnaboard" style="color:white"><span class="glyphicon glyphicon-blackboard"
            ></span>&nbsp;Q&A</a></td>
            <td style="text-align: center; vertical-align:middle;border-radius:2px;" bgcolor="#AE734E">
            <a href="/listNotice" style="color:white"><span class="glyphicon glyphicon-tent"></span>&nbsp;Notice</a></td>
        </tr>

		<tr style="height:50px; text-align:center; vertical-align:middle;">
              <td colspan="2" style="text-align: center; vertical-align:middle;border-radius:2px;" bgcolor="#ADB6B5">
              <a href="/lotteResort" style="color:white"><span class="glyphicon glyphicon-ok-circle"></span>&nbsp;Lotte Resort Map</a></td>
        </tr>
             
        </table>
 </div>

