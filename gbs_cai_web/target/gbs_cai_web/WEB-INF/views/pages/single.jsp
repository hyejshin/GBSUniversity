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
								
									<h3>Lorem Ipsum title </h3>
									<ul id="filters" style="float:right;">
						
						<li class="active" ><span class="filter" data-filter=""><a href ="single.jsp" style="text-decoration:none;">Info</a></span></li>
						<li style="list-style: none;"><span class="filter" data-filter="card"><a href="qna.jsp" style="text-decoration:none;">Q & A</a></span></li>

					</ul>
									<img class="img-responsive" src="/images/sin.jpg" title="banner1">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
								    </div>
								    <div class="artical-links">
		  						 	<ul>
		  						 		<li><small> </small><span>June 14, 2013</span></li>
		  						 		<li><a href="#"><small class="admin"> </small><span>Admin</span></a></li>
		  						 		<li><a href="#"><small class="no"> </small><span>No comments</span></a></li>
		  						 		<li><a href="#"><small class="posts"> </small><span>View Posts</span></a></li>
		  						 		<li><a href="#"><small class="link"> </small><span>Permalink</span></a></li>
		  						 	</ul>
		  						 </div>
</body>
</html>