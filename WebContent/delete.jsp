<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	
	String writer = request.getParameter("WRITER");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>delete.jsp</title>
</head>
<body>

	<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("드라이버 로딩 성공!");
		Connection conn = null;
		Statement stmt = null;
		
		try{
			String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:ORCL";
			String dbUser = "jsporacleteamuser2";
			String dbPass = "jsporaclepw";
			System.out.println("DB 접속 성공!");
			
			
			String query = "delete from BOARD where WRITER = '"+writer+"'";
						
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
						
			stmt = conn.createStatement();
						
			int resultDelete = stmt.executeUpdate(query);
	%>
	<%
			if(resultDelete == 0){
		%>			
			<%= writer %>는 존재하지 않는 글쓴이 입니다!
		<%
			} else {
		%>
			<%= resultDelete %>건의 데이터가 삭제 되었습니다! <br><br>		
			
			<div>
				<form action="index.jsp">
					<input type="submit" value="처음으로">
				</form>
			</div>			
		<%
			}
		%>
	<%
		}catch(SQLException ex){
			out.println(ex.getMessage());
			ex.printStackTrace();
		}   finally{		
			if(stmt != null) try{
				stmt.close();
			} catch(SQLException ex){
				ex.printStackTrace();
			}
			if(conn != null) try{
				conn.close();
			} catch(SQLException ex){
				ex.printStackTrace();
			}
		}
	%>
</body>
</html>