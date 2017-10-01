<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/board/enroll" name="board_write" id="board_write" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
	<table>
		<colgroup>
		<col width="15%">
		<col width="*" />
		</colgroup>
		<caption>Ask Question</caption>
		<tbody>
			<tr>
				<th scope="row">Title</th>
				<td><input type="text" name="title" id="title" class="wdp_90" style="width:500px"></input></td>
			</tr>
			<tr>
				<th scope="row">Image Attach</th>
				<td colspan="2" class="attach_file">
				<input type="file" name="file" id="file" style="width:500px"></input</td> 
			</tr>
			<tr>
				<td colspan="2" class="view_text">
				<textarea rows="20" cols="100" id="detail" name="detail"></textarea>
				</td>
			</tr>			
		</tbody>
	</table>
	<input type="submit" value="Write">
</form>


</body>
</html>