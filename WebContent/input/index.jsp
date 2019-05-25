<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <style>
        body
        {
            height: 100%;
            font: 1.33em 'Roboto Condensed', arial;
            color: #FFF;
            text-align: center;
            background-image: -webkit-radial-gradient(circle, #3c3b52 0%, #252233 80%);
            background-image: radial-gradient(circle, #3c3b52 0%, #252233 80%);
        }
         ul
        {
            list-style-type: none;
        }
        ul
        {
            list-style-type: none;
            display: block;
        }
          label
        {
            display: block;
        }
      
        input{
            border: 1px solid #ccc;
            padding: 7px 0px;
            border-radius: 3px;
            padding-left:5px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
        }
        input:focus{
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
        }
        a{
            cursor:pointer;
            text-decoration:none;
            outline:none;
        }
        a:link,a:visited,a:hover,a:active{
            text-decoration:none;
            color:#ccc ;
        }

        a:focus {
            outline: 0;

        }
    </style>
</head>
<body>
<div class="login">
    <div class="welcome">welcome</div>
    <form action="${pageContext.request.contextPath }/judge?id=1" method="post"  >
    <div class="login-form">
        <div>
            <div class="login-inp">
                <label>用户名</label>
                <input type="text" placeholder="" name="userid" required>
            </div>
        </div>
        <div>
            <div class="login-inp">
                <label>密码</label>
                <input type="password" placeholder="" name="psd" required>
            </div>
        </div>
        <div>
            <div class="login-inp">
            	<input type="hidden" name="id" value="1" />
                <input value="立即登录" type="submit">
            </div>
        </div>

    </div>
    </form >
    <form action="${pageContext.request.contextPath }/judge?id=2" method="post">
       <div>
            <div class="login-txt">
                <input type="submit" value="游客模式">
            </div>
        </div>
    </form>
</div>
</body>
</html>