<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.7.5/css/bootstrap-select.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.7.5/js/bootstrap-select.min.js"></script>


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
<!--header-->
	<div class="header" id="home">
		<div class="container">	
			<div class="logo">
				<h1><a href="/"><img src="/webapp/resources/images/Picture1.png" alt=""></a></h1>
			</div>
			<div class="header-bottom">
				<div class="top-nav">
						<span class="menu"><img src="/webapp/resources/images/menu.png" alt=""> </span>

					<ul>
						<li ><a href="/webapp/WEB-INF/views/index.jsp" class="scroll">Home</a></li>
						<li><a href="/webapp/WEB-INF/views/history.jsp" >My Lecture</a></li>
						<li><a href="#">My Q&A</a></li>
					</ul>
					<!--script-->
				<script>
					$("span.menu").click(function(){
						$(".top-nav ul").slideToggle(500, function(){
						});
					});
			</script>
				</div>
			 		
			<div class="clearfix"> </div>
		</div>
		<div class="clearfix"> </div>
		</div>
	</div>
	<!---->
</body>
</html>