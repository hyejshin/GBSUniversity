<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>login</title>
	<tiles:importAttribute name="loginLayout" />
	<c:forEach var="logincssValue" items="${loginLayout}">
    	<link type="text/css" rel="stylesheet" href="<c:url value="${logincssValue}"/>" />
   </c:forEach>
</head>
<body>
	<section id="logo" class="logo">
		<a href="#"><img src="/assets/images/Picture1.png" alt=""/></a>
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
	

</body>
</html>