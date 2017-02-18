<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
	<title>Insert title here</title>

	<link href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="/webapp/resources/assets/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/webapp/resources/assets/css/styles.css" />
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<section id="logo" class="logo">
		<a href="#"><img src="/webapp/resources/assets/images/Picture1.png" alt=""/></a>
	</section>
	
	<section class="container">

			<form method="post" action="" role="login">
				<div>
					<input type="text" name="username" placeholder="Enter your username" required class="form-control" />
					<span class="glyphicon glyphicon-user"></span>
				</div>
				
				<div>
					<input type="password" name="password" placeholder="Enter password" required class="form-control" />
					<span class="glyphicon glyphicon-lock"></span>
				</div>
			
				<button type="submit" name="go" class="btn btn-block btn-primary">Login Now</button>
				
				<div class="form-group less-space">
					<input type="checkbox" name="remember" value="1" /> Remember me on this device
				</div>
			</form>

	</section>
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="/webapp/resources/assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>