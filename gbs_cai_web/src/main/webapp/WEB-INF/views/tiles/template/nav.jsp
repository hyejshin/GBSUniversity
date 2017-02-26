<%-- 
    Document   : navBar
    Created on : 2017. 2. 15, 오후 10:24:58
    Author     : Joosang Kim
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="header" id="home">
    <div class="container">	
        <div class="logo">
            <h1><a href="#"><img src="/images/Picture1.png" alt=""></a></h1>
        </div>
        <div class="header-bottom">
            <div class="top-nav">
                <span class="menu"><img src="/images/menu.png" alt=""> </span>
                <ul>
                    <li ><a href="/index" class="scroll">Home</a></li>
                    <li><a href="/history" >My Lecture</a></li>
                    <li><a href="/board">My Q&A</a></li>
                </ul>
                <!--script-->
                <script>
                    $("span.menu").click(function () {
                        $(".top-nav ul").slideToggle(500, function () {
                        });
                    });
                </script>
            </div>

            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
