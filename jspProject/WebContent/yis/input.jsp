<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<form action="fileUpload.jsp" method="post"
		enctype="multipart/form-data">
		<table align="center" border="1">
			<tr>
				<td colspan="2">파일 업로드 폼</td>
			</tr>
			<tr>
				<td>번 호:</td>
				<td><input type="text" name="no"></td>
			</tr>
			<tr>
				<td>상품 아이디:</td>
				<td><input type="text" name="sid"></td>
			</tr>
			<tr>
				<td>상품 제목:</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>상품 가격:</td>
				<td><input type="text" name="price"></td>
			</tr>
			<tr>
				<td>상품 상세 내용:</td>
				<td><input type="text" name="content"></td>
			</tr>
			<tr>
				<td>파일명:</td>
				<td><input type="file" name="img"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="전송"></td>
			</tr>
		</table>
	</form>
</body>
</html>