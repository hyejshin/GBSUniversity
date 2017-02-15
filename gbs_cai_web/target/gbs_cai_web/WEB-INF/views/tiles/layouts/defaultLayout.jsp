<%-- 
    Document   : layout
    Created on : 20170213
    Author     : Joosang Kim
    Editor     : Misu Choi
    Version    : 0.0.2
    Description: Layout
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <tiles:insertAttribute name="head" />
    </head>
    <body>
        <header id="header">
            <tiles:insertAttribute name="header" />
        </header>
        <section id="site-content">
            <tiles:insertAttribute name="body" />
        </section>
        <footer id ="footer">
            <tiles:insertAttribute name="footer" />
        </footer>
</body>
</html>


