<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>	CAI university</title>
<tiles:importAttribute name="innerLayout" />
<c:forEach var="innerLayout" items="${innerLayout}">
    <link type="text/css" rel="stylesheet" href="<c:url value="${innerLayout}"/>" />
</c:forEach>
</head>
<body>
				<div class="container">
		              <div class="single-page-artical">
								<div class="artical-content">
								<ul id="filters" style="float:left;">
						
							<li class="active"><span class="filter" data-filter=""><a
							href="index.jsp" style="text-decoration: none;">강좌목록</a></span></li>
					<li><span class="filter" data-filter=""><a
							href="history.jsp" style="text-decoration: none;">수강내역 </a></span></li>

					</ul>
					<div class="clearfix"> </div>
					<c:forEach var="list" items="${list}">
					
									<h3>${list.title}<h4><span style="float:right;">Booth Name: ${list.booth}</span></h4>
									<h4><span style="float:right; margin-right:10px;">Lecture Time: ${list.start} - ${list.end}</span></h4></h3>
									<br><br>
									<ul id="filters" style="float:right;">
						
						<li class="active" ><span class="filter" data-filter=""><a href ="single.jsp" style="text-decoration:none;">Info</a></span></li>
						<li style="list-style: none;"><span class="filter" data-filter="card"><a href="qna.jsp" style="text-decoration:none;">Q & A</a></span></li>

					</ul>
									<br><br><br>
									<img class="img-responsive" src="/images/sin.jpg" title="banner1">
									<p>${list.detail}</p>
								    </div>
								    <div class="artical-links">
		  						 	<ul>
		  						 		<!-- <li><small> </small><span>June 14, 2013</span></li>
		  						 		<li><a href="#"><small class="admin"> </small><span>Admin</span></a></li>
		  						 		<li><a href="#"><small class="no"> </small><span>No comments</span></a></li>
		  						 		<li><a href="#"><small class="posts"> </small><span>View Posts</span></a></li>
		  						 		<li><a href="#"><small class="link"> </small><span>Permalink</span></a></li>-->
		  						 		<li><small> </small><span>${list.date}</span></li>
		  						 		<!-- list 테이블 atta 등  강의 내용 추가적으로 넣으면 바꿔야할 부분 -->
		  						 		<li><a href="#"><small class="admin"> </small><span>Admin</span></a></li>
		  						 		<li><a href="#"><small class="no"> </small><span>No comments</span></a></li>
		  						 		<li><a href="#"><small class="posts"> </small><span>View Posts</span></a></li>
		  						 		<li><a href="#"><small class="link"> </small><span>Permalink</span></a></li>
		  						 	</ul>
		  						 </div>
		  						 </c:forEach>
</body>
</html>