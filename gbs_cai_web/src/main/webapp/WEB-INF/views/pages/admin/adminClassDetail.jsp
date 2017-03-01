<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>    
    <head>
        <title>Admin</title>
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
                            <li clss="active">
                                <a href="#">CAI ClassBoard</a>
                            </li>
                            <li class="dropdown">
                                <a href="#" data-toggle="dropdown" class="dropdown-toggle ">Register<b class="caret"></b>

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
                <!--/span-->
                <div class="span12" id="content">                    
                    <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Class Detail</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
  									<table class="table table-striped">
						              <tbody>
						              <tr>
			<th>클래스ID</th><th>수업제목</th><th>일정</th>
			</tr>
			<tr>
			<td>${vo.class_id}</td>
			<td>${vo.title}</td>
			<td>${vo.date} <span style="font-weight:400;"> ${vo.start} - ${vo.end}</span></td>
		</tr>
		<tr>
		<th>강사</th>
		<th>부스</th>
		<th>수용인원</th>
		</tr>
		<tr>
			<td>${vo.teacher}</td>
			<td>${vo.booth}</td>
			<td>${vo.capacity}</td>
		</tr></tbody>
                                    </table>
		<div class="card">
			
			Imgae File: ${vo.image}<br>
			Attached File: ${vo.atta1}<br> 
			<p>${vo.detail}</p>
			<div class="container" align="center">
			<a href="/gbs_cai_web/modifyClassView?idx=${vo.idx}" class="btn btn-warning">수정</a>
			 | <a href="/gbs_cai_web/adminClass" class="btn btn-info">목록</a>
			</div>
		</div>
						              
						              
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                </div>
            </div>
          
          
          <table border="1" cellspacing="0">
<tr><td width="200">클래스ID: ${vo.class_id}</td><td colspan="2" width="400">수업제목: ${vo.title}</td></tr>
<tr><td>강사: ${vo.teacher}</td><td width="300">부스: ${vo.booth}</td><td>수용인원 ${vo.capacity}</td></tr>
<tr><td>날짜: ${vo.date}</td><td colspan="2">시간: ${vo.start}-${vo.end}</td></tr>
<tr><td colspan="3"><img src="${vo.uploadPath}${vo.image}" width="300"></td></tr>
<tr><td colspan="3">${vo.detail}</td></tr>
<tr><td colspan="3">
	<a href="/download?fileName=${vo.atta1}&path=${vo.uploadPath}">${vo.atta1}</a> <br>
	<a href="/download?fileName=${vo.atta2}&path=${vo.uploadPath}">${vo.atta2}</a> <br>
	<a href="/download?fileName=${vo.atta3}&path=${vo.uploadPath}">${vo.atta3}</a> <br>
	</td></tr>
</table>
<br>

<a href="/modifyClassView?idx=${vo.idx}">수정</a> | <a href="/adminClass">목록보기</a>
          
          
          
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
    </body>

</html>
