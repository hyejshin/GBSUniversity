<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="https://code.jquery.com/jquery-3.1.1.js"
	integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA="
	crossorigin="anonymous"></script>
<title>Insert title here</title>
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
			
			
	    	if( total == $('#hidden').val() ) {
	    		document.getElementById("txt2").disabled = false;
	    		$.ajax({
	    			type : 'post',
	    			url : '/test/updateFlag',
	    			data : {  }, 
	    			success : function(result) {	    				
	    				
	    			}
	    		});  
	    		
	    	} else {
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
	
	document.getElementById("txt2").disabled = false;
}

</script>
<body>
<table id="tbList" border="1">
	<tr>
		<input type="hidden" id="hidden" value="01:51"> 
		<td><input type="text" id="txt2" disabled></td>
		<td><input type="button" id="btn1" value="active" onclick="click1();" /></td>
	</tr>
</table>
</body>
</html>