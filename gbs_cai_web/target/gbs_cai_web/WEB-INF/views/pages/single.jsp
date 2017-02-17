<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<%@include file="/WEB-INF/views/header.jsp"%>
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
									<img class="img-responsive" src="/webapp/resources/images/sin.jpg" title="banner1">
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
		<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>