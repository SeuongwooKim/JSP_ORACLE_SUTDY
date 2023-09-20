<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");

    String boardNum = request.getParameter("BOARDNUM");
    String Title = request.getParameter("TITLE");
    String Content = request.getParameter("CONTENT");
    String Writer = request.getParameter("WRITER");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update.jsp</title>
</head>
<body>

<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    
    try {
        // 1. JDBC 드라이버 로딩
        Class.forName("oracle.jdbc.driver.OracleDriver");
        
        // 2. 데이터베이스 접속 정보 설정
        String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:ORCL";
        String dbUser = "jsporacleteamuser2";
        String dbPass = "jsporaclepw";
        
        // 3. 데이터베이스 커넥션 생성
        conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        
        // 4. SQL 쿼리 생성 및 실행
        String query = "update board set title = ?, content = ? where boardnum = ? and writer = ?";
        pstmt = conn.prepareStatement(query);
        pstmt.setString(1, Title);
        pstmt.setString(2, Content);
        pstmt.setString(3, boardNum);
        pstmt.setString(4, Writer);
        int resultUpdate = pstmt.executeUpdate();
%>
    <div>
        <%
            // 5. 쿼리 실행 결과에 따른 메시지 표시
            if (resultUpdate > 0) {
        %>
                <%= resultUpdate %>건의 데이터가 수정되었습니다! <br><br>
        <%
            } else {
        %>
                <%= Writer %>는 존재하지 않는 회원입니다!
        <%
            }
        %>
        <form action="Index.jsp">
            <input type="submit" value="돌아가기">
        </form>
    </div>
<%
    } catch (SQLException ex) {
        out.println(ex.getMessage());
        ex.printStackTrace();
    } catch (ClassNotFoundException ex) {
        out.println("드라이버를 로드할 수 없습니다.");
        ex.printStackTrace();
    } finally {
        // 6. 사용한 PreparedStatement 및 Connection 종료
        if (pstmt != null) try {
            pstmt.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        if (conn != null) try {
            conn.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
%>
</body>
</html>