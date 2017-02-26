<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<tiles:importAttribute name="notFoundPageAttributes" />
<c:forEach var="notFoundPageAttributes" items="${notFoundPageAttributes}">
    <link type="text/css" rel="stylesheet" href='<c:url value="${notFoundPageAttributes}"/>'/>
</c:forEach>

<div class="main"><br><br><br>
    <h1></h1>
    <div class="main_grids">
        <div class="grid_left">
            <div class="main_grid">
                <h2>404</h2>
            </div>
            <h3>Oops... page not found!</h3>	

        </div>

        <div class="clear"> </div>
    </div>
    <div class="agileits_copyright">
        <p> © 2017 Error Page. All Rights | Design by<a href="#"> IBM </a></p>
    </div>
</div>
