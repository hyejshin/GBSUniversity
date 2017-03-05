<%-- 
    Document   : header
    Created on : 20170212
    Author     : Joosang Kim
    Editor     : 20170214 - Misu Choi 
    Description: Header
--%>
<!-- HEADER -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	HttpSession session1 = request.getSession();
	String user_id = (String)session1.getAttribute("user_id");
%>
<div class="header" id="home">
    <div class="container">	
        <div class="logo">
            <h1><a href="/index"><img src="<c:url value="/images/Picture1.png" />" alt=""></a></h1>     
        </div>
        <div class="header-bottom">
            <div class="top-nav">
                <span class="menu"><img src="<c:url value="/images/menu.png" />" alt=""> </span>

                <ul>
                    <li><a href="/index">Home</a></li>
                    <li><a href="/myLecture?user_id=<%=user_id%>" >My Lecture</a></li>
                    <li><a href="/board">My Q&A</a></li>
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
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user"></i>Hello <%=user_id%>:)<i class="caret"></i>

                                </a>
                                <ul class="dropdown-menu">
                                    <li class="divider"></li>
                                    <li>
                                        <a tabindex="-1" href="/login.jsp">Logout</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                                <br><br>
    </div>
</div>
