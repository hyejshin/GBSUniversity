<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page session="false"%>
<link rel="stylesheet" type="text/css" href="/css/board_ui.css" />
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>
	<table class="board_view">
		<colgroup>
			<col width="15%" />
			<col width="35%" />
			<col width="15%" />
			<col width="35%" />
		</colgroup>
		<h2>GBS University Question Detail</h2>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list}" var="row">
						<tr>
							<th scope="row">글 번호</th>
							<td>${row.idx}</td>
						</tr> 
						<tr>
							<th scope="row">작성자</th>
							<td>${row.user_id}</td>
							<th scope="row">작성시간</th>
							<td>${row.crt_dttm}</td>
						</tr>
						<tr>
							<th scope="row">제목</th>
							<td colspan="3">${row.title}</td>
						</tr>
						<tr>
							<th scope="row">내용</th>
							<td colspan="4">${row.detail}</td>
						</tr>
						<tr>
							<th scope="row">파일</th>
							<td colspan="5"><a href="/board/filedown?file_id=${row.file_id}">${row.file_nm}</a></td>
						</tr>						
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
</body>
</html>


