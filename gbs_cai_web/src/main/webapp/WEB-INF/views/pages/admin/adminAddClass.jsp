<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <title>클래스 등록</title>
</head>
<body>
	<%
	HttpSession session1 = request.getSession();
	String user_id = (String)session1.getAttribute("user_id");
	
	if(!user_id.equals("ibmk0reagbs!")) {%>
		<c:redirect url="/logout"/>
	<%}%>

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
                                	<form class="form-horizontal" name="myForm" method="POST" action="/addClass">
                     
                     					<div class="control-group">
                                          <label class="control-label" for="booth">Class ID</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="class_id" name="class_id"  data-provide="typeahead"
                                            	placeholder="Enter the Class ID" required="required">
                                            <p class="help-block"></p>
                                          </div>
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="title">Title</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="title" name="title"  data-provide="typeahead"
                                            	placeholder="Enter the Class Title" required="required">
                                            <p class="help-block">강의명을 등록해주세요.</p>
                                          </div>
                                          </div>
                                          <div class="control-group">
                                          <label class="control-label" for="teacher">Speaker</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="speaker" name="speaker"  data-provide="typeahead"
                                            	placeholder="Enter the Speaker" required="required">
											<p class="help-block">강사명을 등록해주세요</p>
                                          </div>
                                          </div>
     
                                        <div class="control-group">
                                          <label class="control-label" for="room">Room</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="room" name="room"  data-provide="typeahead"
                                            	placeholder="Enter the Classroom" required="required">
                                            <p class="help-block"></p>
                                          </div>
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="session">Session</label>
                                          <div class="controls">
                                            <select id="session" name="session" class="chzn-select">
                                              <option value="Session1 (1:15 - 2:30)">Session1 (1:15 - 2:30)</option>
                                              <option value="Session2 (2:45 - 4:00)">Session2 (2:45 - 4:00)</option>
                                              <option value="Session3 (4:15 - 5:30)">Session3 (4:15 - 5:30)</option>
                                            </select>
                                          </div>
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="capacity">Capacity</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="capacity" name="capacity" data-provide="typeahead"
                                            	placeholder="Enter the Capacity" value='0'>
                                            <p class="help-block"> </p>
                                          </div>
                                        </div>

                                        <div class="control-group">
                                          <label class="control-label" for="imageFile">Image File</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="speaker_img" name="speaker_img" data-provide="typeahead"
                                            	placeholder="Enter the Image Name">
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="attendCode">Attend Code</label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="attend_code" name="attend_code" data-provide="typeahead"
                                            	placeholder="Enter the Attend Code">
                                          </div>
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="textarea2">Class Detail</label>
                                          <div class="controls">
                                            <textarea class="input-xlarge textarea" placeholder="Enter text:)" name="detail" rows="10" style="width:90%; height:80%;"></textarea>
                                          </div>
                                        </div>
                                        <div class="form-actions">
                                          <input type="submit" class="btn btn-primary" value="Save"/>
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
