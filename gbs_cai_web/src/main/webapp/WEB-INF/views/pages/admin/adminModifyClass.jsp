<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="PATH" value="C:/temp/"/>

<form method="POST" action="/gbs_cai_web/modifyClass" enctype="multipart/form-data">
<input type="hidden" id="idx" name="idx" value="${vo.idx}">

<table>
<tr>
	<td colspan="2">Title: <input type="text" id="title" name="title" value="${vo.title}"></td></tr>
<tr><td>Teacher: <input type="text" id="teacher" name="teacher" value="${vo.teacher}"></td>
	<td>Booth: <input type="text" id="booth" name="booth" value="${vo.booth}"></td>
	<td>capacity <input type="text" id="capacity" name="capacity" value="${vo.capacity}"></td></tr>
<tr><td>Date: <input type="text" id="date" name="date" value="${vo.date}"></td>
	<td>start_time <input type="text" id="start" name="start" value="${vo.start}"></td>
	<td>end_time: <input type="text" id="end" name="end" value="${vo.end}"></td></tr>
	<tr><td colspan="3"><input type="file" name="image"></td></tr>
<tr><td colspan="3"><img src="${PATH}${vo.image}" height="300"></td></tr>
<tr><td colspan="3"><input type="file" name="files"> ${vo.atta1} <br>
					<input type="file" name="files"> ${vo.atta2} <br>
					<input type="file" name="files"> ${vo.atta3} <br>
</td></tr>
</table>
<textarea rows="5" cols="100" name="detail">${vo.detail}</textarea>
<br>

<input type="hidden" name="imageName" value="${vo.image}">
<input type="hidden" name="atta1" value="${vo.atta1}">
<input type="hidden" name="atta2" value="${vo.atta2}">
<input type="hidden" name="atta3" value="${vo.atta3}">

<input type="submit" value="수정" class="btn-default"> <a href="/gbs_cai_web/adminClass">목록보기</a>

</form>

</body>
</html>