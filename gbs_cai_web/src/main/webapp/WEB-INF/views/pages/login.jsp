<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<tiles:importAttribute name="loginJS"/>
<c:forEach var="loginJS" items="${loginJS}">
    <script src="<c:url value="${loginJS}" />" ></script>
</c:forEach>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<div class="wrapper">
		<div class="container">
			<h2>IBM Korea GBS University</h2>
                   <br><b>Global Business Service</b>
			<form class="form" id="loginForm" name="loginForm" >
				<input id="user_id" type="text" name="user_id" placeholder="XXXX@kr.ibm.com"> 
				<button type="submit" name="go" id="login-button">Login</button>
			</form>
		</div>

		<ul class="bg-bubbles">
			<li></li>
			<li></li>

		</ul>
	</div>
	
