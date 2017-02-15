<%-- 
    Document   : header
    Created on : 20170212
    Author     : Joosang Kim
    Editor     : 20170214 - Misu Choi 
    Description: Header
--%>
<!-- HEADER -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="header" id="home">
    <div class="container">	
        <div class="logo">
            <h1><a href="index.jsp"><img src="<c:url value="/images/Picture1.png" />" alt=""></a></h1>     
        </div>
        <div class="header-bottom">
            <div class="top-nav">
                <span class="menu"><img src="<c:url value="/images/menu.png" />" alt=""> </span>

                <ul>
                    <li ><a href="/webapp/WEB-INF/views/index.jsp" class="scroll">Home</a></li>
                    <li><a href="/webapp/WEB-INF/views/history.jsp" >My Lecture</a></li>
                    <li><a href="#">My Q&A</a></li>
                </ul>
                <!--script-->
                <script>

                </script>
            </div>

            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
