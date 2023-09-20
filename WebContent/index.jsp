<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 1단계 : 게시글 등록 -->
	<form action="insertForm.jsp">
		<input type="submit" value="게시글 등록" /> <br> <br>
	</form>
	<!-- 2단계 : 게시글 번호 입력 상세 조회 -->
	<form action="selectForm.jsp">
		<input type="submit" value="게시글 번호 입력 상세 조회" /> <br> <br>
	</form>
	<!-- 3단계 : 게시글 수정 -->
	<form action="updateBoardForm.jsp">
		<input type="submit" value="게시글 번호 입력 수정" /> <br> <br>
	</form>
	<!-- 4단계 : 게시글 삭제 -->
	<form action="deleteForm.jsp">
		<input type="submit" value="게시글 번호 입력 삭제" /> <br> <br>
	</form>

</body>
</html>