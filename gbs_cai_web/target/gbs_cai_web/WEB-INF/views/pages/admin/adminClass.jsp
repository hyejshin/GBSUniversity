<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>    
    <head>
        <title>Tables</title>
        <!-- Bootstrap -->
        <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="all">
        <link href="/css/admin.css" rel="stylesheet" media="all">
        <link href="/css/DT_bootstrap.css" rel="stylesheet" media="all">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="vendors/flot/excanvas.min.js"></script><![endif]-->
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <script src="vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    
    <body>
  <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="#">Admin</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav pull-right">
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user"></i> Vincent Gabriel <i class="caret"></i>

                                </a>
                                <ul class="dropdown-menu">
                                    <li class="divider"></li>
                                    <li>
                                        <a tabindex="-1" href="/login.jsp">Logout</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav">
                            <li class="active">
                                <a href="#">CAI ClassBoard</a>
                            </li>
                            <li class="dropdown">
                                <a href="#" data-toggle="dropdown" class="dropdown-toggle">Register<b class="caret"></b>

                                </a>                                
                            </li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row-fluid">
            	<form class="form-horizontal" method="POST" action="/classList">
                   <select id="session" name="session" name="session">
                   		<option value="all">전체</option>
	                    <option value="Session1 (1:15 - 2:30)">session1</option>
						<option value="Session2 (2:45 - 4:00)">session2</option>
						<option value="Session3 (4:15 - 5:30)">session3</option>
					</select>
					<input type="submit" value="Search" class="btn btn-info"/>
				</form>
                <!--/span-->
                <div class="span12" id="content">                    
                    <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Class Table</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
  									<table class="table">
						              <thead>
						                <tr>
						                  <th>ClassID</th>
						                  <th>Title</th>
						                  <th>Room</th>
						                  <th>Session</th>
						                  <th>Speaker</th>
						                  <th></th>
						                </tr>
						              </thead>
						              <tbody>
						                <c:forEach items="${list}" var="vo">
	
		<tr>
			<td>${vo.class_id}</td><td><a href="/detailClass?idx=${vo.idx}" >${vo.title}</a></td>
			<td>${vo.room}</td><td>${vo.session}</td><td>${vo.speaker}</td>
			<td><a href="/modifyClassView?idx=${vo.idx}" class="btn btn-warning">Edit</a> | <a href="/deleteClass?idx=${vo.idx}" class="btn btn-danger">Delete</a></td>
		</tr>

                        
	</c:forEach>
						                
						              </tbody>
						            </table>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>

                </div>
            </div>
          
<button class="btn btn-info" onClick="location.href='/addClassView';">수업등록</button>

    
            <hr>
            <footer>
                <p>&copy; Developed By IBM GBS 2017</p>
            </footer>

    </body>

</html>
