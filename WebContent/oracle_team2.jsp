<%@page import="java.sql.*" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
	request.setCharacterEncoding("utf-8");

	String boardnum = request.getParameter("boardnum");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	
%>

<%
Connection conn=null;
PreparedStatement pstmt = null;
String url="jdbc:oracle:thin:@localhost:1521:orcl";

 %>    
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
		<!-- Alt + Shift + Y 는 자동 줄바꿈 -->

	<%
		// 1. JDBC 드라이버 로딩
	    // MySQL DB 8아래 버전은 com.mysql.jdbc.Driver을 사용했지만,
	    // MySQL DB 8이상 버전은 com.mysql.cj.jdbc.Driver 로 사용합니다
	
		
		try{
			Class.forName("oracle.jdbc.OracleDriver");
			conn=DriverManager.getConnection(url,"jsporacleteamuser2","jsporaclepw");
			
				System.out.println("DB 접속 성공!");
					
				// update board set BOARDNUM = 1, TITLE = '제목1', CONTENT = 'JO@GMAIL.COM', WRITER = '조성진' where BOARDNUM = '01';
				String query = "update board set TITLE = ?, CONTENT = ?, WRITER = ? where BOARDNUM = ?";
					

				// 3. Statement 생성
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, title);
				pstmt.setString(2, content);
				pstmt.setString(3, writer);
				pstmt.setString(4, boardnum);
				
				// 4. 쿼리문 실행
				int resultUpdate = pstmt.executeUpdate();

			%>
		<%= resultUpdate %> 건이 수정되었습니다!
	
	<%
		}	catch(SQLException ex) {
			out.println(ex.getMessage());
			ex.printStackTrace();
		}	finally{
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