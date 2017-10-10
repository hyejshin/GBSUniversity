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
		
        <h4>My Enrollment</h4>
        <br/>
	<h5><span class="glyphicon glyphicon-time" aria-hidden="true"></span><b>Morning Session</b></h5>
        <table id="table" class="table table-striped table-condensed" cellspacing="0" width="100%">
					<thead thead style=" background-color: #578CA9; color:white; ">
						<tr>
							<th style="width:30%; text-align:center;">Session</th>
							<th style="width:45%; text-align:center;">Title</th>
							<th style="text-align:center;">Room</th>
							<td></td>
						</tr>
					</thead>
					<tbody>	

					<c:if test="${vo.morning_room eq '7F, On-demand room'}">
						<tr>
							<td style="vertical-align:middle;">Session1<br>(9:45 - 10:45)</td>
							<td style="vertical-align:middle;">Cloud Application Services</td>
							<td>7F, On-demand</td>
							<td></td>
						</tr>
						<tr>
							<td style="vertical-align:middle;">Session2<br>(11:00 -12:00)</td>
							<td style="vertical-align:middle;">Watson Case</td>
							<td>7F, On-demand</td>
							<td></td>
						</tr>
					</c:if>

					<c:if test="${vo.morning_room eq '6F, Demo Room'}">
						<tr>
							<td style="vertical-align:middle;">Session1<br>(9:45 - 10:45)</td>
							<td style="vertical-align:middle;">Cloud Application Services</td>
							<td>6F, Demo Room</td>
							<td></td>
						</tr>
						<tr>
							<td style="vertical-align:middle;">Session2<br>(11:00 -12:00)</td>
							<td style="vertical-align:middle;">Watson Case</td>
							<td>6F, Demo Room</td>
							<td></td>
						</tr>
					</c:if>
						
					</tbody>


				</table>
				
	<h5><span class="glyphicon glyphicon-time" aria-hidden="true"></span><b>Break-Out Session</b></h5>
      <p style="text-align:justify;">각 세션 title 클릭시 세션 내용 및 Q&A를 확인할 수 있습니다.
      Click on the each session, session description and Q&A are available</p>

        <table id="table" class="table table-striped table-condensed" cellspacing="0" width="100%">
					<thead style="background-color: #95DEE3; color: white;">
						<tr>
							<th style="width:30%; text-align:center;">Session</th>
							<th style="width:45%; text-align:center;">Title</th>
							<th style="text-align:center;">Room</th>
						</tr>
					</thead>
					<tbody>	

						<tr>
							<td style="vertical-align:middle;">Session1<br>(1:15 - 2:30)</td>
							<td style="vertical-align:middle;">
								<a href='/class/detailLec?title=${vo.session1}&session=Session1 (1:15 - 2:30)'>${vo.session1}</a></td>
							<td style="vertical-align:middle;">${vo.room1}</td>
						</tr>
						
						<tr>
							<td style="vertical-align:middle;">Session2<br>(2:45 - 4:00)</td>
							<td style="vertical-align:middle;">
								<a href='/class/detailLec?title=${vo.session2}&session=Session2 (2:45 - 4:00)'>${vo.session2}</a></td>
							<td style="vertical-align:middle;">${vo.room2}</td>
						</tr>
						
						<tr>
							<td style="vertical-align:middle;">Session3<br>(4:15 - 5:30)</td>
							<td style="vertical-align:middle;">
								<a href='/class/detailLec?title=${vo.session3}&session=Session3 (4:15 - 5:30)'>${vo.session3}</a></td>
							<td style="vertical-align:middle;">${vo.room3}</td>	
						</tr>
						
					</tbody>


				</table>
    </div>

</div>
