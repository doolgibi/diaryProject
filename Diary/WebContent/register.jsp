<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>用户注册</title>
        <!-- CSS -->
        <link rel="stylesheet" href="css/register/bootstrap.min.css">
        <link rel="stylesheet" href="css/register/style.css">
    </head>

    <body>

        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="logo span4">
                        <h1><a href="">USer Register <span class="red">.</span></a></h1>
                    </div>                  
                </div>
            </div>
        </div>
        
        <div class="register-container container">
            <div class="row">
                <div class="iphone span5">
                    <img class="img" src="img/p1.jpg" alt="">
                </div>
                <div class="register span6">
                    <form action="user?action=register" method="post">
                        <h2>Register TO <span class="red"><strong>calendar</strong></span></h2>
                        <label for="userName">用户名</label>
                        <input type="text" id="userName" name="userName" placeholder="请输入用户名">
                        <label for="password">密码</label>
                        <input type="password" id="password" name="password" placeholder="请输入密码">
                      		             
			            <label for="nickName">昵称</label>
                        <input type="text" id="nickName" name="nickName" placeholder="请输入nickName">            
			                              
                        <button type="submit">注册</button>
                    </form>
                </div>
            </div>
        </div>
   
    </body>

</html>