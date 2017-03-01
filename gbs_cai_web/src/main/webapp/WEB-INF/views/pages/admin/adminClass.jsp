<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>admin Class</title>

<style>
	body {
		padding: 10px;
	}
</style>

</head>
<body>

<!-- 
<select id="date" name="date">
	<option value="all">전체</option>
	<option value="2017-03-10">2017-03-10(금)</option>
	<option value="2017-03-11">2017-03-10(토)</option>
</select>
<input type="submit" value="검색" class="btn btn-info"/>
 -->

<button class="btn btn-info" onClick="location.href='/addClassView';">수업등록</button>

<table width="500" cellpadding="0" cellspacing="0" border="1" style="margin-top:20px">
	<tr>
		<td>classID</td><td>title</td><td>booth</td><td>time</td><td>teacher</td><td></td>
	</tr>
	<c:forEach items="${list}" var="vo">
	<tr>
		<td>${vo.class_id}</td><td><a href="/detailClass?idx=${vo.idx}" >${vo.title}</a></td>
			<td>${vo.booth}</td><td>${vo.start}-${vo.end}</td><td>${vo.teacher}</td>
			<td><a href="/modifyClassView?idx=${vo.idx}">수정</a> | <a href="/deleteClass?idx=${vo.idx}">삭제</a></td>
	</tr>
	</c:forEach>
</table>

</body>
</html>