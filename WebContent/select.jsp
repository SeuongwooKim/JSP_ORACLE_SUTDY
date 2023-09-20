<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
String boardNum = request.getParameter("boardNum");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>데이터 조회하기</title>
<style>
	table {
		border-collapse: collapse;	
	}
</style>
</head>
<body>
	<%
		Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
	Throwable occuredException = null;

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("드라이브 로딩 성공!");

		String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
		String dbUser = "jsporacleteamuser2";
		String dbPass = "jsporaclepw";

		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		System.out.println("DB 접속 성공!");

		String query = "select * from board where boardnum = " + boardNum;

		st = conn.createStatement();
		conn.setAutoCommit(false);

		rs = st.executeQuery(query);

		if (rs.next()) {
	%>
	<table border="1">
		<tr>
			<td>boardNum : </td>
			<td><%=rs.getString("BOARDNUM")%></td>
		</tr>
		<tr>
			<td>title : </td>
			<td><%=rs.getString("TITLE")%></td>
		</tr>
		<tr>
			<td>content : </td>
			<td><%=rs.getString("CONTENT")%></td>
		</tr>
		<tr>
			<td>writer : </td>
			<td><%=rs.getString("WRITER")%></td>
		</tr>
	</table>
	<%
		} else{
			%>
			조회된 데이터가 없습니다!
			<%
		}
		
	%>

	<%
		conn.commit();

	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	} catch (SQLException e) {
	e.printStackTrace();
	} finally {
	try {
		if (st != null) {
			st.close();
		}
		if (conn != null) {
			conn.close();
		}
	} catch (SQLException e) {
		System.out.println("예외가 발생했습니다!");
	}
	}
	%>

	<div>
		<form action="index.jsp">
			<input type="submit" value="처음으로 돌아가기">
		</form>
	</div>
</body>
</html>