<%-- 
    Document   : header
    Created on : 20170212
    Author     : Joosang Kim
    Editor     : 20170214 - Misu Choi
    Editor     : 20170305 - HyeJung Shin
    Description: Header
--%>
<!-- HEADER -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	HttpSession session1 = request.getSession();
	String user_id = (String)session1.getAttribute("user_id");
        String tempStr = (String)session1.getAttribute("user_nm");
        String[] nameArr = tempStr.split("/");
        String user_nm = nameArr[0];
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
<div class="header" id="home">
    <div class="container">	
        <div class="logo">
            <h1><a href="/maintile"><img src="<c:url value="/images/Picture1.png" />" alt=""></a></h1>     
        </div>
        <div class="header-bottom">
            <div class="top-nav">
                <span class="menu"><img src="<c:url value="/images/menu.png" />" alt=""> </span>

                <ul>
                    <li><a href="/maintile">Home</a></li>
                    <li><a href="/index">Agenda</a></li>
                    <li><a href="/myLecture?user_id=<%=user_id%>">My Enrollment</a></li>
                    <li><a href="/attend">Attend</a></li>
                    <!--
                    <%//if(user_id.equals("ibmk0reagbs!")) {%>
                      <li><a href="/adminClass">Admin Page</a></li>
                    <%//}%>-->

                </ul>
                <!--script-->
                <script>

                </script>
            </div>

            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
	    <ul class="nav pull-right">
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user"></i><%=user_nm%>:)<i class="caret"></i>

                                </a>
                                <ul class="dropdown-menu">
                                    <li class="divider"></li>
                                    <li>
                                        <a tabindex="-1" href="/logout"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>Logout</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                                <br><br>
    </div>
</div>
