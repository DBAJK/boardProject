<%--
  Created by IntelliJ IDEA.
  User: jgkim
  Date: 2024-03-20
  Time: 오후 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>로그인</title>
    <style type="text/css">
        *{
            padding: 0;
            margin: 0;
            border: none;
        }
        body{
            font-size: 14px;
            font-family: 'Roboto', sans-serif;
        }
        .login-wrapper{
            width: 500px;
            height: 350px;
            padding: 40px;
            box-sizing: border-box;
        }

        .login-wrapper > h2{
            font-size: 24px;
            color: #6189e0;
            margin-bottom: 20px;
        }
        #login-form > input{
            width: 100%;
            height: 48px;
            padding: 0 10px;
            box-sizing: border-box;
            margin-bottom: 16px;
            border-radius: 6px;
            background-color: #F8F8F8;
        }
        #login-form > input::placeholder{
            color: #D2D2D2;
        }
        #login-form > input[type="submit"]{
            color: #fff;
            font-size: 16px;
            background-color: #6189e0;
            margin-top: 20px;
        }
        #login-form > input[type="checkbox"]{
            display: none;
        }
        #login-form > label {
            color: #999999;
        }
        #login-form > a{
            color : #6189e0;
        }

    </style>
<%--    <link rel="stylesheet" href="../css/style.css" type="text/css"/>--%>
</head>
<body>
    <div class="login-wrapper">
        <h2>Login</h2>
        <form method="post" action="mainBoard" id="login-form">
            <input type="text" name="userName" id="userName" placeholder="ID">
            <input type="password" name="userPassword" id="userPassword" placeholder="Password">
            <label for="remember-check">
                <input type="checkbox" id="remember-check">아이디 저장하기
            </label>
            <a href="joinAcP">회원가입</a>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>

<script>

</script>