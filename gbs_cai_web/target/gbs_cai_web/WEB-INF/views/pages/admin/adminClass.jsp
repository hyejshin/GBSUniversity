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
                   <select class="selectpicker" id="date" name="date">
                   		<option value="all">전체</option>
	                    <option value="2017-03-10">2017-03-10(금)</option>
						<option value="2017-03-11">2017-03-10(토)</option>
					</select>
					<input type="submit" value="Search" class="btn btn-info"/>

					<button class="btn-success" onClick="location.href='/gbs_cai_web/addClassView';">수업등록</button>
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
						                  <th>No</th>
						                  <th>제 목</th>
						                  <th>부 스</th>
						                  <th>시 간</th>
						                  <th>강사명</th>
						                  <th></th>
						                </tr>
						              </thead>
						              <tbody>
						                <c:forEach items="${list}" var="vo">
	
		<tr>
			<td>${vo.class_id}</td><td><a href="/gbs_cai_web/detailClass?idx=${vo.idx}" >${vo.title}</a></td>
			<td>${vo.booth}</td><td>${vo.start}-${vo.end}</td><td>${vo.teacher}</td>
			<td><a href="/gbs_cai_web/modifyClassView?idx=${vo.idx}" class="btn btn-warning">Edit</a> | <a href="/gbs_cai_web/deleteClass?idx=${vo.idx}" class="btn btn-danger">Delete</a></td>
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
          
          <!-- 
<select id="date" name="date">
	<option value="all">전체</option>
	<option value="2017-03-10">2017-03-10(금)</option>
	<option value="2017-03-11">2017-03-10(토)</option>
</select>
<input type="submit" value="검색" class="btn btn-info"/>
 -->

<button class="btn btn-info" onClick="location.href='/addClassView';">수업등록</button>

<table width="500" cellpadding="0" cellspacing="0" border="1" style="margin-top:20px">
	<tr>
		<td>classID</td><td>title</td><td>booth</td><td>time</td><td>teacher</td><td></td>
	</tr>
	<c:forEach items="${list}" var="vo">
	<tr>
		<td>${vo.class_id}</td><td><a href="/detailClass?idx=${vo.idx}" >${vo.title}</a></td>
			<td>${vo.booth}</td><td>${vo.start}-${vo.end}</td><td>${vo.teacher}</td>
			<td><a href="/modifyClassView?idx=${vo.idx}">수정</a> | <a href="/deleteClass?idx=${vo.idx}">삭제</a></td>
	</tr>
    
    
            <hr>
            <footer>
                <p>&copy; Developed By IBM GBS 2017</p>
            </footer>
        </div>
        <!--/.fluid-container-->

        <script src="/vendors/jquery-1.9.1.js"></script>
        <script src="/bootstrap/js/bootstrap.min.js"></script>
        <script src="/vendors/datatables/js/jquery.dataTables.min.js"></script>


        <script src="/script/scripts.js"></script>
        <script src="/script/DT_bootstrap.js"></script>
        <script>
        $(function() {
            
        });
        </script>
    </body>

</html>
