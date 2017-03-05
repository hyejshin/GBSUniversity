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
		<div class="banner">
			<div class="banner-matter">
				<h2>Creative Ideas Live Here</h2>
				<p>Aliquam suscipit vel nulla quis eleifend. Maecenas vitae tristique ante. Sed sit amet vehicula libero.</p>		
			 </div>
			<div class="tv">
				<img class="img-responsive" src="/images/tv.png" alt="">
			</div>
				 <div class="clearfix"> </div>
		</div>
	</div>
				<div class="container">
		              <div class="single-page-artical">
								<div class="artical-content">
								<ul id="filters" style="float:left;">
						
						<li><span class="filter" data-filter=""><a href="index.jsp" style="text-decoration:none;">강좌목록</a></span></li>
						<li  class="active"><span class="filter" data-filter=""><a  href ="qna.jsp" style="text-decoration:none;">수강내역 </a></span></li>

					</ul>
					<div class="clearfix"> </div>
 
        <h3>Lecture Data</h3>
        <br />
        <br />
        Morning Session
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
							<td>7F, On-demand room(7M17,7M18,7M19)</td>
							<td></td>
						</tr>
						<tr>
							<td>Session2 (11:00 - 12:00)</td>
							<td>Watson Case</td>
							<td>7F, On-demand room(7M17,7M18,7M19)</td>
							<td></td>
						</tr>
					</c:if>

					<c:if test="${vo.morning_room eq '6F, Demo Room'}">
						<tr>
							<td>Session1 (9:45 - 10:45)</td>
							<td>Cloud Application Services</td>
							<td>7F, On-demand room(7M17,7M18,7M19)</td>
							<td></td>
						</tr>
						<tr>
							<td>Session2 (11:00 - 12:00)</td>
							<td>Watson Case</td>
							<td>7F, On-demand room(7M17,7M18,7M19)</td>
							<td></td>
						</tr>
					</c:if>
						
					</tbody>


				</table>
				
        Break-Out Session
        <table id="table" class="table table-striped table-condensed" cellspacing="0" width="100%">
					<thead>
						<tr>
							<td>Session</td>
							<td>Title</td>
							<td>Room</td>
							<td>Enter</td>
							
						</tr>
					</thead>
					<tbody>	

						<tr>
							<td>Session1 (1:15 - 2:30)</td>
							<td>${vo.session1}</td>
							<td>${vo.room1}</td>
							<td><a href='/class/detailLec?session=${vo.session1}&room=${vo.room1}'>해당클래스가기</a></td>
						</tr>
						
						<tr>
							<td>Session2 (2:45 - 4:00)</td>
							<td>${vo.session2}</td>
							<td>${vo.room2}</td>
							<td><a href='/class/detailLec?title=${vo.session2}&room=${vo.room2}'>해당클래스가기</a></td>
						</tr>
						
						<tr>
							<td>Session3 (4:15 - 5:30)</td>
							<td>${vo.session3}</td>
							<td>${vo.room3}</td>
							<td><a href='/class/detailLec?title=${vo.session3}&room=${vo.room3}'>해당클래스가기</a></td>
						</tr>
						
					</tbody>


				</table>
    </div>
				<div class="clearfix"> </div>
				<br><br><br>
</body>
</html>