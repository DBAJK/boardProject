<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.DriverManager" %><%--
  Created by IntelliJ IDEA.
  User: jgkim
  Date: 2024-03-19
  Time: 오후 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String url = "jdbc:mysql://localhost:3306/mainBoard";
    String user = "root";
    String password = "1234";

    Connection conn = null;

    try {
        Class.forName("org.mariadb.jdbc.Driver");
        out.println("드라이버 로딩 성공<br>");

        conn = DriverManager.getConnection(url, user, password);
        out.println("데이터베이스 연결 성공<br>");
    } catch(ClassNotFoundException e) {
        System.out.println("[에러] : " + e.getMessage());
    } catch(SQLException e) {
        System.out.println("[에러] : " + e.getMessage());
    } finally {
        if(conn != null) conn.close();
    }
%>

    <h1>OO 게시판</h1>

<%
    String id =(String)session.getAttribute("id");

    if(id==null){
%>
    <a href="loginP">로그인</a>
<%    } else { %>
    <a href="logout">로그아웃</a>
<%    } %>

</body>
</html>
