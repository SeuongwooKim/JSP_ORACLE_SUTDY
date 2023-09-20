<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="updateBoard.jsp">

		<table>
			<tr>
				<td>게시글 번호</td>
				<td> <input type="text" name="BOARDNUM" size="10"> </td>
			</tr>
			<tr>
				<td>게시글 제목</td>
				<td> <input type="text" name="BOARDTIT" size="10"> </td>
			</tr>
			<tr>
				<td>게시글 내용</td>
				<td> <input type="text" name="BOARDCONT" size="10"> </td>
			</tr>
			<tr>
				<td>작성자</td>
				<td> <input type="text" name="BOARDWRI" size="10"> </td>
			</tr>
			<tr>
				<td><input type="submit" value="수정"></td>
				<td><input type="reset" value="취소"></td>
			</tr>
		</table>
	
	</form>

</body>
</html>