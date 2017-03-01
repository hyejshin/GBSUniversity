<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admin Class Detail</title>

<style>
	table, th, td{
		border: 1px solid skyblue;
	}
</style>
</head>
<body>

<table border="1" cellspacing="0">
<tr><td width="200">클래스ID: ${vo.class_id}</td><td colspan="2" width="400">수업제목: ${vo.title}</td></tr>
<tr><td>강사: ${vo.teacher}</td><td width="300">부스: ${vo.booth}</td><td>수용인원 ${vo.capacity}</td></tr>
<tr><td>날짜: ${vo.date}</td><td colspan="2">시간: ${vo.start}-${vo.end}</td></tr>
<tr><td colspan="3"><img src="${vo.uploadPath}${vo.image}" width="300"></td></tr>
<tr><td colspan="3">${vo.detail}</td></tr>
<tr><td colspan="3">
	<a href="/download?fileName=${vo.atta1}&path=${vo.uploadPath}">${vo.atta1}</a> <br>
	<a href="/download?fileName=${vo.atta2}&path=${vo.uploadPath}">${vo.atta2}</a> <br>
	<a href="/download?fileName=${vo.atta3}&path=${vo.uploadPath}">${vo.atta3}</a> <br>
	</td></tr>
</table>
<br>

<a href="/modifyClassView?idx=${vo.idx}">수정</a> | <a href="/adminClass">목록보기</a>


</body>
</html>