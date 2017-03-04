<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<tiles:importAttribute name="showDetailAttributes" />
<c:forEach var="showDetailAttributes" items="${showDetailAttributes}">
    <link type="text/css" rel="stylesheet" href='<c:url value="${showDetailAttributes}"/>'/>
</c:forEach>
	
<!-- <script type="text/javascript">
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
</script>-->
				<c:forEach var="list" items="${list}">
				<%HttpSession session1 = request.getSession();%>
	
									<input type="hidden" id="user_id" value=<%= session1.getAttribute("user_id") %> />
									<input type="hidden" id="start" value=${list.start} />
									<input type="hidden" id="class_id" value=${list.class_id} />
				<div class="container">		 

	       <div class="work">
			 <div class="details">		 
				 <div class="col-md-7 posts">
					 <h3 style="font-weight:600; font-style: italic;">${list.title} Class Title </h3>
					 <p><h5>Speaker: ${list.speacker}</h5></p>
					 <p><h7>Date : Saturday, 11 March 2017</h7></p>
					 <p><h7>Time : ${list.session}<span>Room: ${list.room}</span></h7></p><br>
				 </div>	
				 <div class="col-md-3 date" style="padding:0px;">
					 <p style="padding: 8px 0px;">WHAT</p>
				 </div>
				 <div class="clearfix"></div>
			 </div>
			 <div class="details">			 
				 <div class="col-md-7 posts">
					 <h4>ABOUT THIS SESSION</h4>
					 <p>${list.detail}</p>
					 <!-- detail 나오면 아래 태그는 지울것 -->
					 <p> 예: Fusce in vulputate sapien. Phasellus tincidunt at dolor id consectetur. Integer vitae rhoncus eros. Integer ac nunc dictum, 
			 lacinia tortor ac, pulvinar lectus. Nunc gravida non est nec semper. Suspendisse imperdiet velit in pretium laoreet.
			 liquam in orci ac odio egestas porttitor sit amet accumsan enim. Morbi nec sollicitudin ante, eu tempus diam. Integer lectus justo, consectetur 
			 sit amet enim tristique, egestas consequat ex. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>
	
				 </div>	
				 <div class="col-md-3 date" style="padding:0px;">
					 <p style="padding: 8px 0px;">WHO</p>
				 </div>
				 <div class="clearfix"></div>
			 </div>
			 <div class="details">
				 
				 <div class="col-md-7 posts">
					 <h4>ABOUT THE SPEACKER</h4>
					 <div class="img-responsive" style="float:left;"><img src="" alt="img"/>${list.speacker-img}</div>
					 <p>${list.speacker}</p></div>	
     			 <div class="clearfix"></div>
			 </div>
		 </div>
		 	</c:forEach>
		 <h3>Question Board</h3>
		 <div class="info">
			 <p>Fusce in vulputate sapien. Phasellus tincidunt at dolor id consectetur. Integer vitae rhoncus eros. Integer ac nunc dictum, 
			 lacinia tortor ac, pulvinar lectus. Nunc gravida non est nec semper. Suspendisse imperdiet velit in pretium laoreet.
			 liquam in orci ac odio egestas porttitor sit amet accumsan enim. Morbi nec sollicitudin ante, eu tempus diam. Integer lectus justo, consectetur 
			 sit amet enim tristique, egestas consequat ex. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>
		 </div>
	</div>


		  						 