<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%
	request.setCharacterEncoding("utf-8");

	String boardNum = request.getParameter("BOARDNUM");
	String boardTit = request.getParameter("BOARDTIT");
	String boardCont = request.getParameter("BOARDCONT");
	String boardWri = request.getParameter("BOARDWRI");
%>

<title>Insert title here</title>
</head>
<body>

<%

	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("드라이버 로딩 성공!");
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try{
		String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:ORCL";
		String dbUser = "jsporacleteamuser2";
		String dbPass = "jsporaclepw";
		System.out.println("DB 접속 성공!");
		
		String query = "update board set boardnum = ?, title = ?, content = ? WHERE writer = ?";
		
		// 2. 데이터베이스 커넥션 생성
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		// 3. Statement 생성
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, boardNum);
		pstmt.setString(2, boardTit);
		pstmt.setString(3, boardCont);
		pstmt.setString(4, boardWri);
		
		// 4. 쿼리문 실행
		int resultInsert = pstmt.executeUpdate();
			%>
			
		
			
			<%= resultInsert %>건의 데이터가 수정되었습니다!
			
			<%
				if(resultInsert == 0){
			%>
				<%= boardNum %>은(는) 존재하지 않는 ID입니다!
			<%
				}
			%>
			
			<div>
				<form action="index.jsp">
					<input type="submit" value="처음으로">
				</form>
			</div>
	<%
	}
	catch(SQLException ex) {
		out.println(ex.getMessage());
		ex.printStackTrace();
	} finally{
	      // 6. 사용한 Statement 종료
	      if(pstmt != null) try{
	         pstmt.close();
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