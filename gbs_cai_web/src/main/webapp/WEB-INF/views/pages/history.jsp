<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<tiles:importAttribute name="innerLayout" />
<c:forEach var="innerLayout" items="${innerLayout}">
    <link type="text/css" rel="stylesheet" href="<c:url value="${innerLayout}"/>" />
</c:forEach>

<div class="container">		
		
	</div>
				<div class="container">
		              <div class="single-page-artical">
								<div class="artical-content">
								<ul id="filters" style="float:left;">
						
						<li><span class="filter" data-filter=""><a href="index.jsp" style="text-decoration:none;">강좌목록</a></span></li>
						<li  class="active"><span class="filter" data-filter=""><a  href ="qna.jsp" style="text-decoration:none;">수강내역 </a></span></li>

					</ul>
					<div class="clearfix"> </div>
 
        <h3>My Enrollment</h3>
        <br />
        <br />
	<h5>Morning Session</h5>
        <table id="table" class="table table-striped table-condensed" cellspacing="0" width="100%">
					<thead>
						<tr>
							<td>Session</td>
							<td>Title</td>
							<td>Room</td>
							<td></td>
							
						</tr>
					</thead>
					<tbody>	

					<c:if test="${vo.morning_room eq '7F, On-demand room'}">
						<tr>
							<td>Session1 (9:45 - 10:45)</td>
							<td>Cloud Application Services</td>
							<td>7F, On-demand room</td>
							<td></td>
						</tr>
						<tr>
							<td>Session2 (11:00 - 12:00)</td>
							<td>Watson Case</td>
							<td>7F, On-demand room</td>
							<td></td>
						</tr>
					</c:if>

					<c:if test="${vo.morning_room eq '6F, Demo Room'}">
						<tr>
							<td>Session1 (9:45 - 10:45)</td>
							<td>Cloud Application Services</td>
							<td>7F, On-demand room</td>
							<td></td>
						</tr>
						<tr>
							<td>Session2 (11:00 - 12:00)</td>
							<td>Watson Case</td>
							<td>7F, On-demand room</td>
							<td></td>
						</tr>
					</c:if>
						
					</tbody>


				</table>
				
	<h5>Break-Out Session</h5>
      <b>"각 세션 title 클릭 시 세션 내용 및 Q&A를 확인 할 수 있습니다.
      Clink on the each session, session description and Q&A are available"<b>

        <table id="table" class="table table-striped table-condensed" cellspacing="0" width="100%">
					<thead>
						<tr>
							<td>Session</td>
							<td>Title</td>
							<td>Room</td>
							
						</tr>
					</thead>
					<tbody>	

						<tr>
							<td>Session1<br><b>(1:15 - 2:30)</b></td>
							<td><a href='/class/detailLec?title=${vo.session1}&session=Session1 (1:15 - 2:30)'>${vo.session1}</a></td>
							<td>${vo.room1}</td>
							
						</tr>
						
						<tr>
							<td>Session2<br><b>(2:45 - 4:00)</b></td>
							<td><a href='/class/detailLec?title=${vo.session2}&session=Session2 (2:45 - 4:00)'>${vo.session2}</a></td>
							<td>${vo.room2}</td>
							
						</tr>
						
						<tr>
							<td>Session3<br><b>(4:15 - 5:30)</b></td>
							<td><a href='/class/detailLec?title=${vo.session3}&session=Session3 (4:15 - 5:30)'>${vo.session3}</a></td>
							<td>${vo.room3}</td>
							
						</tr>
						
					</tbody>


				</table>
    </div>
				<div class="clearfix"> </div>
				<br><br><br>
</body>
</html>
