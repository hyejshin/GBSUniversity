<%-- 
    Document   : header
    Created on : 20170212
    Author     : Joosang Kim
    Editor     : 20170214 - Misu Choi//20170305 - HyeJung Shin
    EDITOR     : 20171003 - Misu Choi
    Description: Header
--%>
<!-- HEADER -->
<link rel="shortcut icon" href="images/favicon.ico">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	HttpSession session1 = request.getSession();
	String user_id = (String)session1.getAttribute("user_id");
    String user_nm = (String)session1.getAttribute("user_nm");
    String user_serial = (String)session1.getAttribute("user_serial");    
%>
<style>
<!--
.nav > li > a {
    position: relative;
    display: block;
    padding: 5px 5px;
    border: 1px solid;
    border-radius: 10px;
        border-color: #415a67;
}

.nav {
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
    padding-top: 10px;
}


-->
</style>
<div class="header" style="width:100%;" id="home">
		<div class="container">	
        <div class="logo">
            <h1><a href="/maintile"><img src="<c:url value="/images/Picture1.png" />" alt="" width="95%"></a></h1>     
        </div>
        <div class="header-bottom">
            <div class="top-nav">
                <span class="menu"><img src="<c:url value="/images/menu.png" />" alt=""> </span>

                <ul>
                    <li><a href="/maintile"><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>
                    <li><a href="/index2"><span class="glyphicon glyphicon-calendar"></span>&nbsp;Agenda</a></li>
                    <li><a href="/myEnroll?user_serial=<%=user_serial %>"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;My Bus/Room Info</a></li>
                    <li><a href ="#"><span class="glyphicon glyphicon-comment"></span>&nbsp;Talk Talk</a></li>
                </ul>
            </div>

            <div class="clearfix"> </div>
        </div>
                    <ul class="nav pull-left" style="float:right;">
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                                 <i class="icon-user"></i><i class="caret"></i><%=user_nm%>

                                </a>
                                <ul class="dropdown-menu">
                                    <li class="divider"></li>
                                    <li>
                                        <a tabindex="-1" href="/logout"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>Logout</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
        <div class="clearfix"> </div>
    </div>
</div>
