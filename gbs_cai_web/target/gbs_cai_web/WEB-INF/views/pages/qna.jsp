<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>CAI university</title>
<tiles:importAttribute name="innerLayout" />
<c:forEach var="innerLayout" items="${innerLayout}">
    <link type="text/css" rel="stylesheet" href="<c:url value="${innerLayout}"/>" />
</c:forEach>

</head>
<body>
	<div class="container">
		<br>
		<h3>Shell Programming</h3>
		<br>
		<h6>
			<span style="float: right;">Booth Name: Track 1</span>
		</h6>
		<h6>
			<span style="float: right; margin-right: 10px;">Lecture Time:
				13:00 - 14:00 </span>
		</h6>
		<br>
		<br>


		<h3>
			<b><marquee behavior="alternate" scrolldelay="100"
					direction="right"> Question Board</marquee></b>
		</h3>
		<table class="table table-striped" bgcolor="D8D8D8">

			<thead>
				<tr>
					<th style="text-align: center;">번 호</th>
					<th style="text-align: center;">제 목</th>
					<th style="text-align: center;">작성자</th>
					<th style="text-align: center;">작성일</th>
					<th style="text-align: center;">조 회</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td align="center">3</td>
					<td><a href="Board_View.jsp">질문 글입니다 3</a></td>
					<td align="center">정연우</td>
					<td align="center">2015/11/23</td>
					<td align="center">1234</td>
				</tr>
				<tr>
					<td align="center">2</td>
					<td><a href="Board_View.jsp">질문 글입니다 2</a></td>
					<td align="center">신혜정</td>
					<td align="center">2015/11/23</td>
					<td align="center">123</td>
				</tr>
				<tr>
					<td align="center">1</td>
					<td><a href="Board_View.jsp">답변 글입니다 1</a></td>
					<td align="center">최미수</td>
					<td align="center">2015/11/23</td>
					<td align="center">12</td>
				</tr>
			</tbody>
			<!-- 페이징 처리 하게되면 여기에 관련 내용 추가 -->
			<tfoot>
				<tr>
					<td align="center" colspan="5">1</td>
				</tr>
			</tfoot>
		</table>
		<input type="button" class="btn btn-primary" value="list" /> <input
			type="button" class="btn btn-warining" value="write" />

		<div class="clearfix"></div>

		<!-- 질문 클릭 시 해당 질문과 함께 답변 등록란 띄워주기: Ajax 처리하여 한 화면에서 가능하게  -->
		<!-- 질문 상세 보기 -->
		<div id="detail" type="hidden">
		<form name="BoardViewForm" method="post">
			<table class="table-striped table" summary="전체 테이블 구성">
				<tr>
					<td><div align="center">
							<h3>
								<b>Questions</b>
							</h3>
						</div></td>
				</tr>
				<tr>
					<td>
						<table class="table" summary="목록 테이블 구성">
							<tr>
								<td align=center bgcolor=#dddddd>작성자</td>
								<td bgcolor=#ffffe8>정연우</td>
								<td align=center bgcolor=#dddddd>작성일</td>
								<td bgcolor=#ffffe8>2015/11/23</td>
							</tr>
							<tr>
								<td align=center bgcolor=#dddddd>제 목</td>
								<td bgcolor=#ffffe8 colspan=3>게시판 글입니다</td>
							</tr>
							<tr>
								<td><br>가나다라마바사<br></td>
							</tr>
						</table>

						<div class="clearfix"></div>
					</td>
				</tr>
				<section class="box">
				<tr>
					<td bgcolor=#dcdcdc height=25 align=center>답변달기</td>
				</tr>
				<br>
				<form name="BoardReplyForm" class="form-control" method="post">
					<tr>
						<td>
							<table class="table" align=center>
								<tr>
									<td align="center">작성자</td>
									<td><input type=text name=name size=30></td>
								</tr>
								<tr>
									<td align="center">제 목</td>
									<td><input type=text size=30 name=title value="RE : 게시판 글입니다."></td>
								</tr>
								<tr>
									<td align="center">내 용</td>
									<td>
										<textarea name=content cols="30" rows="8"> 가나다라마바사
										</textarea>
									</td>
								</tr>
								<tr>
     			<td colspan=2><hr size=1></td>
    		</tr>
								<tr>
									<td align=center colspan=2>
										<hr size=1>
										<div align="center">
											<input type="submit" value="register" class="btn btn-info"
												style="float: right:"> &nbsp; <input type="button"
												style="float: left:" class="btn btn-danger" value="cancel">
									</td>
									</div>
								</tr>
							</table>
						</td>
					</tr>
					</section>
				</form>
			</table>
		</form>
		</div>
		<div class="clearfix"></div>
		<!-- div id 가 writenew 는 새로운 질문 등록하는 페이지: list 화면-> write 버튼 클릭 -> 이 화면 ajax 로 처리해야함 -->
		<div id="writenew">
		<table summary="글쓰기 전체 테이블">
		<section class="box">
		<form name="BoardWriteForm" method="post" id="BoardWriteForm">

		<table class="table" summary="테이블 구성" >
		<caption> 질문 등록하기 </caption>	
    		<tr>
				<td>작성자</td>
				<td><input type=text name=name size=30></td>
			</tr>
			<tr>
	 			<td>E-Mail</td>
	 			<td><input type=text name=email size=30></td>
    		</tr>
    		<tr>
     			<td>제 목</td>
     			<td><input type=text name=title size=30></td>
    		</tr>
    		<tr>
     			<td>내 용</td>
     			<td><textarea name=content cols="30" rows="8"></textarea></td>
    		</tr>
    		<tr>
     			<td colspan=2><hr size=1></td>
    		</tr>
    		<tr>
     			<td colspan="2"><div align="center">
     			<input type="submit" value="Write" class="btn btn-info">&nbsp;&nbsp;
         		<input type="button" value="Cancel" class="btn btn-danger" >
         		</div>
     			</td>
    		</tr> 
		</table>
	</form> 
	</section>
	</table>
		
		</div>
		<div class="clearfix"></div>
		
	</div>


</body>
</html>
