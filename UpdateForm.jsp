<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style type="text/css">
	table{ 	width: 500px;
			border: 2px solid skyblue;
			text-align:center;}
	tr{border: 1px solid pink;}
	td input{width: 260px; text-align:center;}
</style>
</head>
<body>
<form action="UpdateUpgrade.jsp">
		
		<table border="2" >
			<tr>
				<td>NUMBER</td>
				<td> <input type="text" name="BOARDNUM" size="10"> </td>
			</tr>
			<tr>
				<td>제목</td>
				<td> <input type="text" name="TITLE" size="10"> </td>
			</tr>
			<tr>
				<td>내용</td>
				<td> <input type="text" name="CONTENT" size="10"> </td>
			</tr>
			<tr>
				<td>작성자</td>
				<td> <input type="text" name="WRITER" size="10"> </td>
			</tr>
			<tr>
				<td> <input type="submit" value="등록"> </td>
				<td> <input type="reset" value="취소"> </td>
			</tr>
		</table>
	</form>

</body>
</html>