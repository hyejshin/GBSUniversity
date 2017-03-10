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
		font-weight: bold;
	}
</style>


<img src="/images/cognitive.jpg" width="100%">
<table class="table" style="border-collapse: separate; border-spacing: 6px 6px; padding:2px;">
        <tr style="height:130px; text-align:center; vertical-align:middle;">
        	<td style="text-align:center; vertical-align:middle;" width="50%" bgcolor="#F0CD5B">
            <a href="/index" style="color:white">CAI Univ. Agenda</a></td>
            <td style="text-align:center; vertical-align:middle;" bgcolor="#95DEE3">
            <a href="/myLecture?user_id=<%=user_id2%>" style="color:white">My Enrollment</a></td>
        </tr>

        <tr style="height:100px; text-align:center; vertical-align:middle;">
        	<td style="text-align:center; vertical-align:middle;" bgcolor="#EFD1C6">
            <a href="/attend" style="color:white">Attendance Check</a></td>
            <td style="text-align:center; vertical-align:middle;" bgcolor="#578CA9">
            <a href="/roominfo" style="color:white">Room Info</a></td>
        </tr>   

        <tr style="height:70px; text-align:center; vertical-align:middle;">
            <td style="text-align: center; vertical-align:middle;" bgcolor="#88B04B">
            <a href="#" style="color:white" data-toggle="modal"data-target="#basicModal" >
            Conrad Hotel</a></td>
            <td style="text-align: center; vertical-align:middle;" bgcolor="#AE734E">
            <a href="http://www.ifcmallseoul.com/eng/jsp/store/floorInfo.do?lang=e&floor=L3" style="color:white">Lunch Time</a></td>
        </tr>
        
        <tr style="height:40px; text-align:center; vertical-align:middle;">
            <td colspan="2" style="text-align: center; vertical-align:middle;" bgcolor="#004B8D">
            <a href="/listNotice" style="color:white">Notice</a></td>
        </tr>
	</table>

<div class="modal fade" id="basicModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
            <h4 class="modal-title" id="myModalLabel">Conrad Hotel</h4>
            </div>
            <div class="modal-body">
                <img src="/images/map.png" style="width:100%;"/>
            </div>
  
    </div>
  </div>
</div>


