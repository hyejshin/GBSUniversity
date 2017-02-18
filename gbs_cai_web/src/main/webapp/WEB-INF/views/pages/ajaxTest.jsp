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
	function select_onchange(obj)
	{
	
		$.ajax({
			type : 'post',
			url : '/fetchClasses',
			data : { id : obj.value }, 
			success : function(result) {
				$("#tbList").empty();
				//alert(result.length);
				 for(var i=0;i<result.length;i++) {
					$("#tbList").append("<tr><td><a href='detail.do?idx="+result[i].idx+"'>"+result[i].idx+"</a></td>"+
					"<td>"+result[i].id+"</td>"+"<td>"+result[i].pw+"</td>"+
					"<td>"+result[i].name+"</td>"+"<td>"+result[i].email+
					"</td>"+"<td>"+result[i].tel+"</td>"+"<td>"+result[i].address+"</td></tr>");
				} 
				
			}
				
		});
	}
</script>
<body>
<table id="tbList" border="1">
	<select id="selectbox" name="selectbox" onChange=select_onchange(this);>
		<option value="">선택</option>
		<option value="google">google</option>
		<option value="naver">naver</option>
		<option value="daum">daum</option>
		<option value="nate">nate</option>
	</select>
	
	<tr>
		<td>IDX</td>
		<td>ID</td>
		<td>PW</td>
		<td>name</td>
		<td>email</td>
		<td>tel</td>
		<td>address</td>
	</tr>
		
</table>
	


</body>
</html>