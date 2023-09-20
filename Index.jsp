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
	<!-- 1단계 : 게시글 등록 -->
	<form action="board/insertForm.jsp">
		<input type="submit" value="게시글 등록_장나라" /> <br> <br>
	</form>
	<!-- 2단계 : 게시글 번호 입력 상세 조회 -->
	<form action="board/selectForm.jsp">
		<input type="submit" value="게시글 번호 입력 상세 조회_김희선" /> <br> <br>
	</form>
	<!-- 3단계 : 게시글 수정 -->
	<form action="UpdateForm.jsp">
		<input type="submit" value="게시글 번호 입력 수정_김지은" /> <br> <br>
	</form>
	<!-- 4단계 : 게시글 삭제 -->
	<form action="deleteTxtForm.jsp">
		<input type="submit" value="게시글 번호 입력 삭제" /> <br> <br>
	</form>

</body>
</html>