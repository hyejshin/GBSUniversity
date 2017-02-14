<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>	CAI university</title>
<link href="/webapp/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/webapp/resources/js/jquery.min.js"></script>
<link href="/webapp/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	 
		addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); 
			function hideURLbar(){ window.scrollTo(0,1); } 
	
</script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript" src="/webapp/resources/js/move-top.js"></script>
<script type="text/javascript" src="/webapp/resources/js/easing.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
					</script>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp" %>
	<div class="container">		
		<div class="banner">
			<div class="banner-matter">
				<h2>Creative Ideas Live Here</h2>
				<p>Aliquam suscipit vel nulla quis eleifend. Maecenas vitae tristique ante. Sed sit amet vehicula libero.</p>		
			 </div>
			<div class="tv">
				<img class="img-responsive" src="/webapp/resources/images/tv.png" alt="">
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
        <table id="table" class="table table-striped table-condensed" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th>NO</th>
							<th>시 간</th>
							<th>강의명</th>
							<th>강의실</th>
							<th style="width: 110px;">Action</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>01</td>
							<td>9:00 - 10:10</td>
							<td>Watson API</td>
							<td>Room A</td>
							<td><a class="btn btn-sm btn-info"><span class="">EDIT</span></a><span>
									<a class="btn btn-sm btn-danger"><span class="">DEL</span></a>
							</span></td>
						</tr>
						<tr>
							<td>01</td>
							<td>9:00 - 10:10</td>
							<td>Watson API</td>
							<td>Room A</td>
							<td><a class="btn btn-sm btn-info"><span class="">EDIT</span></a><span>
									<a class="btn btn-sm btn-danger"><span class="">DEL</span></a>
							</span></td>
						</tr>
						<tr>
							<td>02</td>
							<td>13:00 - 14:10</td>
							<td>Bluemix Lab</td>
							<td>Room A</td>
							<td><a class="btn btn-sm btn-info"><span class="">EDIT</span></a><span>
									<a class="btn btn-sm btn-danger"><span class="">DEL</span></a>
							</span></td>
						</tr>
						<tr>
							<td>03</td>
							<td>15:00 - 16:10</td>
							<td>Electronics Logic</td>
							<td>Room A</td>
							<td><a class="btn btn-sm btn-info"><span class="">EDIT</span></a><span>
									<a class="btn btn-sm btn-danger"><span class="">DEL</span></a>
							</span></td>
						</tr>

					</tbody>


				</table>
    </div>
				<div class="clearfix"> </div>
				<br>
				<br>
				<br>
			<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>