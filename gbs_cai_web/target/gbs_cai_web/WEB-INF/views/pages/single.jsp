<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>	CAI university</title>
<tiles:importAttribute name="innerLayout" />
<c:forEach var="innerLayout" items="${innerLayout}">
    <link type="text/css" rel="stylesheet" href="<c:url value="${innerLayout}"/>" />
</c:forEach>
</head>
<script>
window.onload = function() {
	 setInterval(function() {
		 var server_time = srvTime();
			var compare_time = new Date(server_time);
			
		    var hours = compare_time.getHours();
		    var minutes = compare_time.getMinutes();
		    
		    if( parseInt(hours) < 10 ) {
		    	hours = 0 + "" + hours;
		    }
		    if( parseInt(minutes) < 10 ) {
		    	minutes = 0 + "" + minutes;
		    }
			var total = hours + ":" + minutes;
			
			/* 서버시간 = 종료 10분전, text창 활성화 */
	    	if( total == $('#start').val() ) {
	    		document.getElementById("txt2").disabled = false;
	    		    		
	    	} 
	    	/* 서버시간 = 종료 시간, text창 비활성화 */
	    	else if( total == $('#end').val()) {
	    		document.getElementById("txt2").disabled = true;
	    	}
	},3000);
} 

var xmlHttp;

function srvTime(){

	if (window.XMLHttpRequest) { 
		xmlHttp = new XMLHttpRequest(); // IE 7.0 이상, 크롬, 파이어폭스 등
		xmlHttp.open('HEAD',window.location.href.toString(),false);
		xmlHttp.setRequestHeader("Content-Type", "text/html");
		xmlHttp.send('');
		return xmlHttp.getResponseHeader("Date");

	}	else if (window.ActiveXObject) {
		xmlHttp = new ActiveXObject('Msxml2.XMLHTTP');
		xmlHttp.open('HEAD',window.location.href.toString(),false);
		xmlHttp.setRequestHeader("Content-Type", "text/html");
		xmlHttp.send('');
		return xmlHttp.getResponseHeader("Date");
	}
}
function click1() {
	alert("active start");
	$.ajax({
		type : 'post',
		url : '/class/checkCode',
		data : { code : $('#txt2').val(), class_id : $('#class_id').val(), user_id : $('#user_id').val() }, 
		success : function(result) {	    				
			alert(result[0].msg);
		}
	});  
}
</script>
<body>
				<div class="container">
		              <div class="single-page-artical">
								<div class="artical-content">
								<ul id="filters" style="float:left;">
						
							<li class="active"><span class="filter" data-filter=""><a
							href="index.jsp" style="text-decoration: none;">강좌목록</a></span></li>
					<li><span class="filter" data-filter=""><a
							href="history.jsp" style="text-decoration: none;">수강내역 </a></span></li>
							
							<td><input type="button" id="btn1" value="active" onclick="click1();" /></td>
							<td><input type="text" id="txt2" disabled></td>

					</ul>
					<div class="clearfix"> </div>
					
					<c:forEach var="list" items="${list}">
									<%HttpSession session1 = request.getSession();%>
	
									<input type="hidden" id="user_id" value=<%= session1.getAttribute("user_id") %> />
									<input type="hidden" id="start" value=${list.start} />
									<input type="hidden" id="class_id" value=${list.class_id} />
									
									<h3>${list.title}<h4><span style="float:right;">Booth Name: ${list.booth}</span></h4>
									<h4><span style="float:right; margin-right:10px;">Lecture Time: ${list.start} - ${list.end}</span></h4></h3>
									<br><br>
									<ul id="filters" style="float:right;">
						
						<li class="active" ><span class="filter" data-filter=""><a href ="single.jsp" style="text-decoration:none;">Info</a></span></li>
						<li style="list-style: none;"><span class="filter" data-filter="card"><a href="qna.jsp" style="text-decoration:none;">Q & A</a></span></li>

					</ul>
									<br><br><br>
									<img class="img-responsive" src="/images/sin.jpg" title="banner1">
									<p>${list.detail}</p>
								    </div>
								    <div class="artical-links">
		  						 	<ul>
		  						 		<!-- <li><small> </small><span>June 14, 2013</span></li>
		  						 		<li><a href="#"><small class="admin"> </small><span>Admin</span></a></li>
		  						 		<li><a href="#"><small class="no"> </small><span>No comments</span></a></li>
		  						 		<li><a href="#"><small class="posts"> </small><span>View Posts</span></a></li>
		  						 		<li><a href="#"><small class="link"> </small><span>Permalink</span></a></li>-->
		  						 		<li><small> </small><span>${list.date}</span></li>
		  						 		<!-- list 테이블 atta 등  강의 내용 추가적으로 넣으면 바꿔야할 부분 -->
		  						 		<li><a href="#"><small class="admin"> </small><span>Admin</span></a></li>
		  						 		<li><a href="#"><small class="no"> </small><span>No comments</span></a></li>
		  						 		<li><a href="#"><small class="posts"> </small><span>View Posts</span></a></li>
		  						 		<li><a href="#"><small class="link"> </small><span>Permalink</span></a></li>
		  						 	</ul>
		  						 </div>
		  						 </c:forEach>
		  						 
</body>
</html>