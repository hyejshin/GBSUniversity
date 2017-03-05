<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>    
    <head>
        <title>AdminClassDetail</title>
    </head>
    
    <body>
    <%
	HttpSession session1 = request.getSession();
	String user_id = (String)session1.getAttribute("user_id");
	
	if(!user_id.equals("admin")) {%>
		<c:redirect url="/logout"/>
	<%}%>
	
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
			<th>Class ID</th><th>Title</th><th>Session</th>
			</tr>
			<tr>
			<td>${vo.class_id}</td>
			<td>${vo.title}</td>
			<td>${vo.session}</td>
		</tr>
		<tr>
		<th>Speaker</th>
		<th>Room</th>
		<th>Capacity</th>
		</tr>
		<tr>
			<td>${vo.speaker}</td>
			<td>${vo.room}</td>
			<td>${vo.capacity}</td>
		</tr>
		<tr><td colspan="3"><img src="images/speaker/${vo.speaker_img}" width="100"></td></tr>
		</tbody></table>
		<div class="card">
			
			<p>${vo.detail}</p><br><br>

			<div class="container" align="center">
			<a href="/modifyClassView?idx=${vo.idx}" class="btn btn-warning">수정</a>
			 | <a href="/adminClass" class="btn btn-info">목록</a>
			</div>
		</div>
						              
						              
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                </div>
            </div>
          
          

        </div>
        
    </body>

</html>
