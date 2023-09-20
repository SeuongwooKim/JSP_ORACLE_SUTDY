<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>

	<form action="oracle_team2.jsp" method="post">
	
		<table border="1">
			<tr>
			<td>넘버</td>
			<td><input type="text" name="boardnum" size="10"></td>
			</tr>
			<tr>
			<td>제목</td>
			<td><input type="text" name="title" size="10"></td>
			</tr>
			<tr>
			<td>컨텐츠</td>
			<td><input type="text" name="content" size="10"></td>
			</tr>
			<tr>
			<td>작성자</td>
			<td><input type="text" name="writer" size="10"></td>
			</tr>
			<tr>
				<td><input type="submit" value="수정"></td>
				<td><input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>

</body>
</html>