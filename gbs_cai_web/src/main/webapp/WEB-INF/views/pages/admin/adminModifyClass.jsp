<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                    <form class="form-horizontal" method="POST" action="/modifyClass" enctype="multipart/form-data">
                                      <input type="hidden" id="idx" name="idx" value="${vo.idx}">
                                      <fieldset>
                                        <legend>Form Components</legend>
                                        <div class="control-group">
                                          <label class="control-label" for="class-_id">Class ID</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="class_id" name="class_id"  value="${vo.class_id}" data-provide="typeahead">
                                            <p class="help-block"></p>
                                          </div>
                                          
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="title">Title</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="title" name="title"  value="${vo.title}"data-provide="typeahead" >
                                            <p class="help-block"></p>
                                          </div>
                                          </div>
                                          <div class="control-group">
                                          <label class="control-label" for="teacher">Teacher</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="teacher" name="teacher"  value="${vo.teacher}" data-provide="typeahead">
                                            <p class="help-block"></p>
                                          </div>
                                          </div>
                                          
                                        <div class="control-group">
                                          <label class="control-label" for="date">Date</label>
                                          <div class="controls">
                                            <input type="text" class="input-xlarge datepicker" id="date" name="date" value="${vo.date}">
                                            <p class="help-block"> </p>
                                          </div> 
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="start">Start Time</label>
                                          <div class="controls">
                                            <input type="text" class="span4" id="start" name="start"  value="${vo.start}"data-provide="typeahead" >
                                            <p class="help-block"></p>
                                          </div>
                                          <label class="control-label" for="end">End Time</label>
                                          <div class="controls">
                                            <input type="text" class="span4" id="end" name="end"  value="${vo.end}" data-provide="typeahead" >                                            <p class="help-block"></p>
                                             <p class="help-block"> </p>
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
                                            <input type="text" class="span6" id="booth" name="booth" value="${vo.booth}" data-provide="typeahead" >
                                            <p class="help-block"></p>
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="capacity">Capacity</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="capacity" name="capacity" value="${vo.booth}" data-provide="typeahead" >
                                            <p class="help-block"> </p>
                                          </div>
                                          </div>
                                        </div>
                                        <div class="container">
                                         <img src="${vo.uploadPath}${vo.image}" height="200"> <br>
                                         Attached File:  ${vo.atta1} <br>
                                         
                                         <input type="hidden" name="imageName" value="${vo.image}">
										<input type="hidden" name="atta1" value="${vo.atta1}">
										<input type="hidden" name="atta2" value="${vo.atta2}">
										<input type="hidden" name="atta3" value="${vo.atta3}">

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
                                            <input class="input-file uniform_on" id="fileInput" name="atta1" type="file">
                                          </div>
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="textarea2">Class Detail</label>
                                          <div class="controls">
                                            <textarea class="input-xlarge textarea" placeholder="Enter text:)" name="detail" rows="10" style="width:90%; height:80%;">${vo.detail}</textarea>
                                          </div>
                                        </div>
                                        <div class="form-actions">
                                          <input type="submit" class="btn btn-default" value="수정"/><!-- Save</button>-->
                                          <input type="reset" class="btn" value="Cancel"/>
                                           <a href="/adminClass" class="btn btn-success">목록</a>
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


</body>
</html>
