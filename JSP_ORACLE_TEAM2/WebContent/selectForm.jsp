<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<body>
	<form action="select.jsp">
		<table>
			<tr>
				<td>조회할 BoradNum : <input type="text" size="40" name="boardNum" placeholder="BoardNum을 입력해주세요!">
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="조회"></td>
			</tr>
			<tr>
				<td><input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>