<%--
  Created by IntelliJ IDEA.
  User: jgkim
  Date: 2024-03-19
  Time: 오후 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>OO 게시판</h1>

    <%
        String id =(String)session.getAttribute("id");

        if(id==null){
    %>

    <a href="loginP">로그인</a>
    <%
    }else{
    %>
    <a href="logout">로그아웃</a>
    <%
        }
    %>

</body>
</html>
