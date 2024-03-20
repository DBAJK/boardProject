<%--
  Created by IntelliJ IDEA.
  User: jgkim
  Date: 2024-03-20
  Time: 오후 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입</title>
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
        .join-wrapper{
            width: 500px;
            height: 350px;
            padding: 40px;
            box-sizing: border-box;
        }

        .join-wrapper > h2{
            font-size: 24px;
            color: #6189e0;
            margin-bottom: 20px;
        }
        #join-form > input{
            width: 100%;
            height: 48px;
            padding: 0 10px;
            box-sizing: border-box;
            margin-bottom: 16px;
            border-radius: 6px;
            background-color: #F8F8F8;
        }
        #join-form > input::placeholder{
            color: #D2D2D2;
        }
        #join-form > input[type="submit"]{
            color: #fff;
            font-size: 16px;
            background-color: #6189e0;
            margin-top: 20px;
        }
        #join-form > input[type="checkbox"]{
            display: none;
        }
        #join-form > label {
            color: #999999;
        }

        .radio_box { display: inline-block; *display: inline; *zoom: 1; position: relative; padding-left: 25px; margin-right: 10px; cursor: pointer; font-size: 14px; -webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none; }

        /* 기본 라디오 버튼 숨기기 */
        .radio_box input[type="radio"] { display: none; }

        /* 선택되지 않은 라디오 버튼 스타일 꾸미기 */
        .on { width: 20px; height: 20px; background: #ddd; border-radius: 50%; position: absolute; top: 0; left: 0; }

        /* 선택된 라디오 버튼 스타일 꾸미기 */
        .radio_box input[type="radio"]:checked + .on { background: #f86480; }
        .on:after { content: ""; position: absolute; display: none; }
        .radio_box input[type="radio"]:checked + .on:after { display: block; }
        .on:after { width: 10px; height: 10px; background: #fff; border-radius: 50%; position: absolute; left: 5px; top: 5px; }
    </style>

</head>
<body>
    <div class="join-wrapper">
        <h2>NEW ACCOUNT</h2>
        <form method="post" action="loginP" id="join-form">
            <input type="text" name="userName" placeholder="ID">
            <input type="password" name="userPassword" placeholder="Password">
            <input type="number" name="userAge" placeholder="UserAge">
            <input type="text" name="userName" placeholder="NAME">
            <input type="text" name="email" placeholder="EMAIL">
                <select name="email" id="email">
                    <option value="direct">직접입력하기</option>
                    <option value="naver">@naver.com</option>
                    <option value="gmail">@gmail.com</option>
                    <option value="daum">@daum.net</option>
                </select>
            <label for="male" class="radio_box"><input type="radio" name="gender" id="male" value="male" checked="checked"><span class="on"></span>남성</label>
            <label for="female" class="radio_box"><input type="radio" name="gender" id="female" value="female"><span class="on"></span>여성</label>

            <select name="nation" id="nation">
            </select>
            <input type="submit" value="회원가입">
        </form>
    </div>

</body>
</html>
