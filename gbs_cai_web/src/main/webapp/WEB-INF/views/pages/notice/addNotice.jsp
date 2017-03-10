<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<tiles:importAttribute name="innerLayout" />
<c:forEach var="innerLayout" items="${innerLayout}">
    <link type="text/css" rel="stylesheet" href="<c:url value="${innerLayout}"/>" />
</c:forEach>

<div class="container">		
		
     <h4>Announcement</h4>
     <br/>

		<form class="form-horizontal" name="myForm" method="POST" action="/addNotice">

			<textarea class="input-xlarge textarea" placeholder="Write Notice Here :)" name="content" rows="10" 
			style="width:90%; height:80%;"></textarea>
		
			<input class="btn btn-info" type="submit" value="Write Notice">
			
		</form>

</div>

<br><br><br><br>