<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>	CAI university</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
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
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
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
						
						<li class="active"><span class="filter" data-filter=""><a href="index.jsp" style="text-decoration:none;">강좌목록</a></span></li>
						<li><span class="filter" data-filter=""><a href ="qna.jsp" style="text-decoration:none;">수강내역</a></span></li>

					</ul>
					<div class="clearfix"> </div>
								
									<h3>Lorem Ipsum title </h3>
									<ul id="filters" style="float:right;">
						
						<li  ><span class="filter" data-filter=""><a href ="single.jsp" style="text-decoration:none;">Info</a></span></li>
						<li class="active" style="list-style: none;"><span class="filter" data-filter=""><a href="qna.jsp" style="text-decoration:none;">Q & A</a></span></li>


					</ul>
									<div class="comment-grid-top">
			<h3>2 Responses</h3>
			<div class="comments-top-top">
				<div class="top-comment-left">
					<img class="img-responsive" src="/webapp/resources/images/co.png" alt="">
				</div>
				<div class="top-comment-right">
					<ul>
						<li><span class="left-at"><a href="#">Admin</a></span></li>
						<li><span class="right-at">2 March 2015 at 10.30am</span></li>
						<li><a class="reply" href="#">REPLY</a></li>
					</ul>
				<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.The point of using Lorem Ipsum is that it has a more-or-less </p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="comments-top-top top-grid-comment">
				<div class="top-comment-left">
					<img class="img-responsive" src="/webapp/resources/images/co.png" alt="">
				</div>
				<div class="top-comment-right">
					<ul>
						<li><span class="left-at"><a href="#">Admin</a></span></li>
						<li><span class="right-at">12 March 2015 at 10.30am</span></li>
						<li><a class="reply" href="#">REPLY</a></li>
					</ul>
				<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.The point of using Lorem Ipsum is that it has a more-or-less </p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="artical-commentbox">
		  						 	<h3>leave a comment</h3>
		  						 	<div class="table-form">
									<form>
										<input type="text" class="textbox" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
										<textarea value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>	
									<input type="submit" value="SEND">
									</form>
									
								</div>
		  						 </div>
		
								</div>
						<div class="clearfix"> </div>
					</div>
		<%@include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>