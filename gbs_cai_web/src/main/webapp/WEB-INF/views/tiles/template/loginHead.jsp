<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<tiles:importAttribute name="loginLayout"/>
<tiles:importAttribute name="loginJS"/>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<c:forEach var="loginLayout" items="${loginLayout}">
    <link type="text/css" rel="stylesheet" href="<c:url value="${loginLayout}" />" media ="all"/> 
</c:forEach>

<c:forEach var="loginJS" items="${loginJS}">
    <script src="<c:url value="${loginJS}" />" ></script>
</c:forEach>