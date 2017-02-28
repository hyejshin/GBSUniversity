<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>admin Class</title>
</head>
<body>

<select id="date" name="date">
	<option value="all">전체</option>
	<option value="2017-03-10">2017-03-10(금)</option>
	<option value="2017-03-11">2017-03-10(토)</option>
</select>
<input type="submit" value="Search" class="btn btn-info"/>

<button class="btn-success" onClick="location.href='/gbs_cai_web/addClassView';">수업등록</button>

<table class="table table-striped table-condensed">
	<thead>
	<tr>
		<th>no</th><th>title</th><th>booth</th><th>time</th><th>teacher</th><th></th>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${list}" var="vo">
	
		<tr>
			<td>${vo.class_id}</td><td><a href="/gbs_cai_web/detailClass?idx=${vo.idx}" >${vo.title}</a></td>
			<td>${vo.booth}</td><td>${vo.start}-${vo.end}</td><td>${vo.teacher}</td>
			<td><a href="/gbs_cai_web/modifyClassView?idx=${vo.idx}" class="btn btn-warning">Edit</a> | <a href="/gbs_cai_web/deleteClass?idx=${vo.idx}" class="btn btn-danger">Delete</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table>

</body>
</html>