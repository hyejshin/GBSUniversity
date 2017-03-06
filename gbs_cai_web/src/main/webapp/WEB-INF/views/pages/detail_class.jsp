<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<tiles:importAttribute name="showDetailAttributes" />
<c:forEach var="showDetailAttributes" items="${showDetailAttributes}">
    <link type="text/css" rel="stylesheet" href='<c:url value="${showDetailAttributes}"/>'/>
</c:forEach>

		<div class="container">		 

				<%HttpSession session1 = request.getSession();%>
	
			<input type="hidden" id="user_id" value=<%= session1.getAttribute("user_id") %> />
			<input type="hidden" id="start" value=${list.start} />
			<input type="hidden" id="class_id" value=${list.class_id} />

	       <div class="work">
			 <div class="details">		 
				 <div class="col-md-7 posts">
					 <h3 style="font-weight:600;">${vo.title}</h3>
					 <p>Speaker: ${vo.speaker}</p>
					 <p>Date : Saturday, 11 March 2017</p>
					 <p>Time : ${vo.session} <span>Room: ${vo.room}</span></p><br>
				 </div>	
				 <div class="col-md-3 date" style="padding:0px;">
					 <p style="padding: 8px 0px;">WHAT</p>
				 </div>
				 <div class="clearfix"></div>
			 </div>
			 <div class="details">			 
				 <div class="col-md-7 posts">
					 <h4>ABOUT THIS SESSION</h4>
					 <p>${vo.detail}</p>	
				 </div>	
				 <div class="col-md-3 date" style="padding:0px;">
					 <p style="padding: 8px 0px;">WHO</p>
				 </div>
				 <div class="clearfix"></div>
			 </div>
			 <div class="details">
				 
				 <div class="col-md-7 posts">
					 <h4>ABOUT THE SPEAKER</h4>
					 <div class="img-responsive" style="float:left;"><img src="/images/speaker/${vo.speaker_img}" alt="img"/></div>
					 <p>${vo.speaker}</p></div>	
     			 <div class="clearfix"></div>
			 </div>
		 </div>

		 <h3>Question Board</h3>
		 <div class="info">
			 
		
		<table class="table table-striped" bgcolor="D8D8D8">

			<thead>
				<tr>
					<th style="text-align: center;">NO</th>
					<th style="text-align: center;">TITLE</th>
					<th style="text-align: center;">WRITER</th>
					<th style="text-align: center;">DATE</th>
					<th style="text-align: center;">HIT</th>
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
								<td align=center bgcolor=#dddddd>WRITER</td>
								<td bgcolor=#ffffe8>정연우</td>
								<td align=center bgcolor=#dddddd>DATE</td>
								<td bgcolor=#ffffe8>2017/03/11</td>
							</tr>
							<tr>
								<td align=center bgcolor=#dddddd>TITLE</td>
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
					<td bgcolor=#dcdcdc height=25 align=center>REPLY</td>
				</tr>
				<br>
				<form name="BoardReplyForm" class="form-control" method="post">
					<tr>
						<td>
							<table class="table" align=center>
								<tr>
									<td align="center">WRITER</td>
									<td><input type=text name=name size=30></td>
								</tr>
								<tr>
									<td align="center">TITLE</td>
									<td><input type=text size=30 name=title value="RE : 게시판 글입니다."></td>
								</tr>
								<tr>
									<td align="center">CONTENT</td>
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
		<caption>게시판 글쓰기</caption>	
    		<tr>
				<td>WRITER</td>
				<td><input type=text name=name size=30></td>
			</tr>
			
    		<tr>
     			<td>TITLE</td>
     			<td><input type=text name=title size=30></td>
    		</tr>
    		<tr>
     			<td>CONTENT</td>
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
	</div>
	</div>
	


		  						 