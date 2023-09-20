<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">

<%

		request.setCharacterEncoding("utf-8");
		String BOARDNUM = request.getParameter("BOARDNUM");
		String TITLE = request.getParameter("TITLE");
		String CONTENT = request.getParameter("CONTENT");
		String WRITER = request.getParameter("WRITER");

%>


<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
<%
	
		Connection conn = null;
		 Statement stmt = null;
	
	try {
		// 1. 드라이버 로딩정보
		Class.forName("oracle.jdbc.OracleDriver");
		System.out.println("드라이버 로딩 성공!");
		 
		
		
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String dbUser = "jsporacleteamuser2";
		String dbPass = "jsporaclepw";
		conn = DriverManager.getConnection(url, dbUser, dbPass);
		System.out.println("DB 접속 성공!"); 
		 
	
		String insertData = "insert into board values('"+BOARDNUM+"', '"+TITLE+"', '"+CONTENT+"', '"+WRITER+"')";
		
	
		stmt = conn.createStatement();
	
		int resultInsert = stmt.executeUpdate(insertData);
		
		%>
		
		<%if(resultInsert == 0){
				
			} else{
				%>
				
			<%= resultInsert %>건의 데이터가 삽입되었습니다!<br><br>
			<form action="../index.jsp">
			<input type="submit" value="처음으로!">
			</form>
			<%
				}
			%>
			
			<% 
		   }
	   	   catch(SQLException ex){
		   out.println(ex.getMessage());
		   ex.printStackTrace();
	   }
	   finally{
		      // 6. 사용한 Statement 종료
		    
		   if(stmt != null) try{
		         stmt.close();
		      } catch(SQLException ex){
		         ex.printStackTrace();
		      }
		      
		      // 7. 커넥션 종료
		      if(conn != null) try{
		         conn.close();
		      } catch(SQLException ex){
		         ex.printStackTrace();
		      }
		   }
		     
		
	%>
		
		 
		
		




</body>
</html>