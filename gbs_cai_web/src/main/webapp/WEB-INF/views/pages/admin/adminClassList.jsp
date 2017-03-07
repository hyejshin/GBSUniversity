<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>    
    <head>
        <title>adminClassList</title>
    </head>
    
    <body>  	
    <%
	HttpSession session1 = request.getSession();
	String user_id = (String)session1.getAttribute("user_id");
	
	if(!user_id.equals("ibmk0reagbs!")) {%>
		<c:redirect url="/logout"/>
	<%}%>

  <button class="btn btn-default" onClick="location.href='/index';">Home</button>
  <button class="btn btn-default" onClick="location.href='/logout';">Logout</button>
  <br><br>
  
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


    </body>

</html>
