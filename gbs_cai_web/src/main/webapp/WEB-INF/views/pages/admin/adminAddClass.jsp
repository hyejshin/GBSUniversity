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
                                      <fieldset>
                                      
                                        <legend>Form Components</legend>
                                <form class="form-horizontal" method="POST" action="/addClass">
                     
                     					<div class="control-group">
                                          <label class="control-label" for="booth">Class ID</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="class_id" name="class_id"  data-provide="typeahead" >
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
                                          <label class="control-label" for="teacher">Speaker</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="speaker" name="speaker"  data-provide="typeahead">                                             <p class="help-block">강사명을 등록해주세요</p>
                                          </div>
                                          </div>
     
                                        <div class="control-group">
                                          <label class="control-label" for="room">Room</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="room" name="room"  data-provide="typeahead" >
                                            <p class="help-block"></p>
                                          </div>
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="session">Session</label>
                                          <div class="controls">
                                            <select id="session" name="session" class="chzn-select">
                                              <option value="Session1 (1:15 - 2:30)">Session1: 1:15 - 2:30</option>
                                              <option value="Session1 (2:45 - 4:00)">Session2: 2:45 - 4:00</option>
                                              <option value="Session1 (4:15 - 5:30)">Session3: 4:15 - 5:30</option>
                                            </select>
                                          </div>
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="capacity">Capacity</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="capacity" name="capacity" data-provide="typeahead" >
                                            <p class="help-block"> </p>
                                          </div>
                                        </div>

                                        <div class="control-group">
                                          <label class="control-label" for="imageFile">Image File</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="speaker_img" name="speaker_img" data-provide="typeahead" >
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="attendCode">Attend Code</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="attend_code" name="attend_code" data-provide="typeahead" >
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
                                           <a href="/adminClass" class="btn btn-success">목록보기</a>
                                        </div>
                                        </form>
                                      </fieldset>
                                    

                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>

            <hr>
            <footer>
                <p>&copy; Developed By IBM GBS 2017</p>
            </footer>

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
