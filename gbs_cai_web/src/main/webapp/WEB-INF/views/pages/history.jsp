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
		
        <h4>My Bus & Room Information</h4>
        <br/>
					
	<h5><span class="glyphicon glyphicon-time" aria-hidden="true"></span><b>Bus & Room Information</b></h5>
      
        <table id="table" class="table table-striped table-condensed" cellspacing="0" width="100%">
					
					<tbody>	

						<tr>
							<td style="vertical-align:middle;">이름</td>
							<td style="vertical-align:middle;">								
							<td style="vertical-align:middle;">${list.user_name}</td>
						</tr>
						
						<tr>
							<td style="vertical-align:middle;">사번</td>
							<td style="vertical-align:middle;">								
							<td style="vertical-align:middle;">${list.user_serial}</td>
						</tr>
						
						<tr>
							<td style="vertical-align:middle;">탑승 장소</td>
							<td style="vertical-align:middle;">
								
							<td style="vertical-align:middle;">${list.depart_place}</td>	
						</tr>
						
						<tr>
							<td style="vertical-align:middle;">탑승 시간</td>
							<td style="vertical-align:middle;">
								
							<td style="vertical-align:middle;">${list.depart_time}</td>	
						</tr>
						
						<tr>
							<td style="vertical-align:middle;">방 종류</td>
							<td style="vertical-align:middle;">
								
							<td style="vertical-align:middle;">${list.room_type}</td>	
						</tr>
						
						<tr>
							<td style="vertical-align:middle;">방 호수</td>
							<td style="vertical-align:middle;">
								
							<td style="vertical-align:middle;">${list.room_num}</td>	
						</tr>
						
					</tbody>
				</table>
    </div>

</div>
