<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WebContent 폴더 안에 index.jsp 소스 코딩</title>
</head>
<body>
	<!-- 1단계 : 게시글 등록 -->
	<form action="board/insertForm.jsp">
		<input type="submit" value="게시글 등록" /> <br> <br>
	</form>
	<!-- 2단계 : 게시글 번호 입력 상세조회 -->
	<form action="board/selectForm.jsp">
		<input type="submit" value="게시글 번호 입력 상세조회" /> <br> <br>
	</form>
	<!-- 3단계 : 게시글 수정 -->
	<form action="board/modifyForm.jsp">
		<input type="submit" value="게시글 번호 입력 수정" /> <br> <br>
	</form>
	<!-- 4단계 : 게시글 삭제 -->
	<form action="board/deleteForm.jsp">
		<input type="submit" value="게시글 삭제" /> <br> <br>
	</form>


</body>
</html>