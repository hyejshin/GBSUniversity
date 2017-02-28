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

image: ${vo.image} <br>
atta1: ${vo.atta1} <br>

	<form action="/gbs_cai_web/modifyClass">
		<input type="hidden" id="idx" name="idx" value="${vo.idx}">

		<table class="table">
			<tr>
				<td>ClassID: <input type="text" id="class_id" name="class_id"
					value="${vo.class_id}"></td>
				<td>Title: <input type="text" id="title" name="title"
					value="${vo.title}"></td>
			</tr>
			<tr>
				<td>Teacher: <input type="text" id="teacher" name="teacher"
					value="${vo.teacher}"></td>
				<td>Booth: <input type="text" id="booth" name="booth"
					value="${vo.booth}"></td>
				<td>capacity <input type="text" id="capacity" name="capacity"
					value="${vo.capacity}"></td>
			</tr>
			<tr>
				<td>Date . .: <input type="text" id="date" name="date"
					value="${vo.date}"></td>
				<td>start_time <input type="text" id="start" name="start"
					value="${vo.start}"></td>
				<td>end_time: <input type="text" id="end" name="end"
					value="${vo.end}"></td>
			</tr>
		</table>
		<textarea rows="10" cols="100" name="detail">${vo.detail}</textarea>
		<br> Image: <input type="file" name="image"> <br>
		File: <input type="file" name="atta1"> <br> <input
			type="submit" value="수정" class="btn-default"> <a
			href="/gbs_cai_web/adminClass">목록보기</a>

	</form>

</body>
</html>