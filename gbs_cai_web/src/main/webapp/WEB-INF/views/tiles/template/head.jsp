<%-- 
    Document   : header
    Created on : 20170212
    Author     : Joosang Kim
    Editor     : 20170214 - Misu Choi 
    Description: Header
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<tiles:importAttribute name="fontList"/>
<tiles:importAttribute name="cssList"/>
<tiles:importAttribute name="jsList" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CAI University</title>
<!-- font -->
<c:forEach var="fontValue" items="${fontList}">
    <link type="text/css" rel="stylesheet" href="<c:url value="${fontValue}"/>" />
</c:forEach>
<!-- css -->
<c:forEach var="cssValue" items="${cssList}">
    <link type="text/css" rel="stylesheet" href="<c:url value="${cssValue}" />" media ="all"/> 
</c:forEach>
<!-- js -->
<c:forEach var="jsValue" items="${jsList}">
    <script src="<c:url value="${jsValue}" />" ></script>
</c:forEach>

