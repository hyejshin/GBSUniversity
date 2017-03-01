<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <title>클래스 등록</title>
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
        <script src="/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
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
                            <li >
                                <a href="#">CAI ClassBoard</a>
                            </li>
                            <li class="dropdown">
                                <a href="#" data-toggle="dropdown" class="dropdown-toggle active">Register<b class="caret"></b>

                                </a>
                                
                            </li>
                            
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </div>
        </div>
        <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Register Class</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                    <form class="form-horizontal" action="/addClass">
                                      <fieldset>
                                        <legend>Form Components</legend>
                                        <div class="control-group">
                                          <label class="control-label" for="class-_id">Class ID</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="class_id" name="class_id"  data-provide="typeahead">
                                            <p class="help-block"></p>
                                          </div>
                                          
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="title">Title</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="title" name="title"  data-provide="typeahead" >
                                            <p class="help-block">강의명을 등록해주세요.</p>
                                          </div>
                                          </div>
                                          <div class="control-group">
                                          <label class="control-label" for="teacher">Teacher</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="teacher" name="teacher"  data-provide="typeahead">                                             <p class="help-block">강사명을 등록해주세요</p>
                                          </div>
                                          </div>
                                          
                                        <div class="control-group">
                                          <label class="control-label" for="date">Date</label>
                                          <div class="controls">
                                            <input type="text" class="input-xlarge datepicker" id="date" name="date" value="03/10/2017">
                                            <p class="help-block"> </p>
                                          </div> 
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="start">Start Time</label>
                                          <div class="controls">
                                            <input type="text" class="span4" id="start" name="start"  data-provide="typeahead" >
                                            <p class="help-block"> 강의가 시작되는 시간을 등록해주세요.</p>
                                          </div>
                                          <label class="control-label" for="end">End Time</label>
                                          <div class="controls">
                                            <input type="text" class="span4" id="end" name="end"  data-provide="typeahead" >                                            <p class="help-block"></p>
                                             <p class="help-block"> 강의가 끝나는 시간을 등록해주세요.</p>
                                          </div>
                                          </div>
                                        <div class="control-group">
                                          <!-- <label class="control-label" for="select01">Select Booth</label>
                                          <div class="controls">
                                            <select id="select01" class="chzn-select">
                                              <option>Track 1</option>
                                              <option>Track 2</option>
                                              <option>Track 3</option>
                                              <option>Track 4</option>
                                            </select>
                                          </div>-->
                                          <label class="control-label" for="booth">Booth Name</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="booth" name="booth"  data-provide="typeahead" >
                                            <p class="help-block"></p>
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="capacity">Capacity</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="capacity"  data-provide="typeahead" >
                                            <p class="help-block"> </p>
                                          </div>
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="fileInput">Image File</label>
                                          <div class="controls">
                                            <input class="input-file uniform_on" id="fileInput" name="image" type="file">
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="fileInput">File</label>
                                          <div class="controls">
                                            <input class="input-file uniform_on" id="fileInput" name="files" type="file">
                                            <input class="input-file uniform_on" id="fileInput" name=files" type="file">
                                            <input class="input-file uniform_on" id="fileInput" name="files" type="file">
                                          </div>
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="textarea2">Class Detail</label>
                                          <div class="controls">
                                            <textarea class="input-xlarge textarea" placeholder="Enter text:)" name="detail" rows="10" style="width:90%; height:80%;"></textarea>
                                          </div>
                                        </div>
                                        <div class="form-actions">
                                          <input type="submit" class="btn btn-primary" value="Save"/><!-- Save</button>-->
                                          <input type="reset" class="btn" value="Cancel"/>
                                           <a href="/gbs_cai_web/adminClass" class="btn btn-success">목록보기</a>
                                        </div>
                                      </fieldset>
                                    </form>

                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
              </div>
            </div>
            <hr>
            <footer>
                <p>&copy; Developed By IBM GBS 2017</p>
            </footer>
        </div>
        <!--/.fluid-container-->
        <link href="/vendors/datepicker.css" rel="stylesheet" media="all">
        <link href="/vendors/uniform.default.css" rel="stylesheet" media="all">
        <link href="/vendors/chosen.min.css" rel="stylesheet" media="all">

        <script src="/vendors/jquery-1.9.1.js"></script>
        <script src="/bootstrap/js/bootstrap.min.js"></script>
        <script src="/vendors/jquery.uniform.min.js"></script>
        <script src="/vendors/chosen.jquery.min.js"></script>
        <script src="/vendors/bootstrap-datepicker.js"></script>
	<script src="/script/form-validation.js"></script>
        
	<script src="/script/scripts.js"></script>
        <script>

	jQuery(document).ready(function() {   
	   FormValidation.init();
	});
	

        $(function() {
            $(".datepicker").datepicker();
            $(".uniform_on").uniform();
            $(".chzn-select").chosen();
            //$('.textarea').wysihtml5();
        });
        </script>
        

<!-- classAdmin -->
<form method="POST" action="/addClass" enctype="multipart/form-data">
	<table>
		<tr><td colspan="3">Title: <input type="text" id="title" name="title"></td></tr>
		<tr><td>Teacher: <input type="text" id="teacher" name="teacher"></td><td>Booth: <input type="text" id="booth" name="booth"></td><td>capacity <input type="text" id="capacity" name="capacity"></td></tr>
		<tr><td>Date : <input type="text" id="date" name="date"></td><td>start_time <input type="text" id="start" name="start"></td><td>end_time: <input type="text" id="end" name="end"></td></tr>
	</table>
	Image: <input type="file" name="image">
	<textarea rows="10" cols="100" name="detail"></textarea> <br>

	File: <input type="file" name="files">
	File: <input type="file" name="files">
	File: <input type="file" name="files"> <br>
	
	<input type="submit" value="Register" class="btn-default">  <a href="/adminClass">목록보기</a>
</form>


</body>
</html>