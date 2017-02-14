<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>footer</title>
</head>
<body>
		<div class="footer" >
			    <div class="container">
				<div class="footer-top" >
				<div class="col-md-4 twitter">						
							<h4>Latest Work</h4>
							<div class="twitter-in">
								<p>2017 03 11 CAI University  By IBM<p>
								<a href="#" >2017 03 11 CAI University  By IBM</a>
								<span>copyright by IBM</span>
							</div>						
						</div>					
						<div class="clearfix"></div>
					</div>					
		</div>
		 <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

	</div>
</body>
</html>