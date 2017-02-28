<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>

	<form action="/gbs_cai_web/addClass">
		<table class="table">
			<tr>
				<td>ClassID: <input type="text" id="class_id" name="class_id"
					class="form-control"></td>
				<td>Title: <input type="text" id="title" name="title" class="form-control"></td>
			</tr>
			<tr>
				<td>Teacher: <input type="text" id="teacher" name="teacher" class="form-control"></td>
				<td>Booth: <input type="text" id="booth" name="booth" class="form-control"></td>
				<td>capacity <input type="text" id="capacity" name="capacity" class="form-control"></td>
			</tr>
			<tr>
				<td>Date . .: <input type="text" id="date" name="date" class="form-control"></td>
				<td>start_time <input type="text" id="start" name="start" class="form-control"></td>
				<td>end_time: <input type="text" id="end" name="end" class="form-control"></td>
			</tr>
		</table>
		<textarea rows="10" cols="100" name="detail" class="form-control"></textarea>
		<br> Image: <input type="file" name="image"> <br>
		File: <input type="file" name="atta1"> <br> <input
			type="submit" value="Register" class="btn-default"> <a
			href="/gbs_cai_web/adminClass" class="btn btn-success">목록보기</a>
	</form>

</body>
</html>