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
	<form action="delete.jsp">
		<table border="1">
			<tr>
				<td>글쓴이</td>
				<td><input type="text" name="WRITER" size="15"></td>
			</tr>
			<tr>
				<td><input type="submit" value="삭제"></td>
				<td><input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>