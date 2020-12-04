<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/2 0002
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<!doctype html>
<head>
    <meta charset="utf-8">
    <title>login</title>
    <link rel="stylesheet" type="text/css" href="./static/css/login.css"/>
    <script type="text/javascript" src="https://lib.sinaapp.com/js/jquery/2.0.2/jquery-2.0.2.min.js"></script>
   <script>
       $(function () {
           $("#btn_regist").click(function () {

               $("#login_login").css("display","none");
               // alert("HellO")
           })
           $(".btn_login").click(function () {

               $("#login_login").css("display","block");
               // alert("HellO")
           })



       })

   </script>
</head>

<body>

<div id="resgist_login" >
    <div class="bgDiv" >
        <div class="login">
            <img class="logoImg" src="https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1354268575,1268995723&fm=26&gp=0.jpg"
                 style="width: 60px;height: 60px;border-radius: 50%;border: 1px dotted purple;margin-left: 180px;">

            <form  method="post" action="/student" >

            <div class="username">
                <img class="userImg" src=""/>
                <input class="userInp" type="text" placeholder="请输入用户名" name="user_name"/>
            </div>
            <div class="pwd">
                <img class="pwdImg" src=""/>
                <input class="pwdInp" type="password" placeholder="请输入密码" name="user_pass"/>
            </div>
            <div class="forgetPwd">
                <img class="pwdImg" src=""/>
                <input class="pwdInp" type="number" placeholder="请输入电话" name="user_tel"/>
            </div>

            <button type="button" class="btn_login">登录</button>

            <input type="submit" class="btn_regist"></input>

            </form>
        </div>
    </div>
</div>

<div id="login_login">
    <div class="bgDiv">
        <div class="login">
            <img class="logoImg" src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2456468987,3284231714&fm=26&gp=0.jpg"
                 style="width: 60px;height: 60px;
                 border-radius: 50%;
                 border: 1px dotted purple;margin-left: 180px;
               ">

            <form  method="post" action="/login" >


            <div class="username">
                <img class="userImg" src=""/>
                <input class="userInp" type="text" placeholder="请输入用户名" name="login_name" />
            </div>
            <div class="pwd">
                <img class="pwdImg" src=""/>
                <input class="pwdInp" type="password" placeholder="请输入密码" name="login_pass"/>
            </div>
            <div class="forgetPwd">
                <img class="pwdImg" src=""/>
                <a class="forgetLink" href="#" target="">忘记密码</a>
            </div>
            <button id="btn_login">登录</button>
            <button id="btn_regist" type="button">注册</button>



            </form>

        </div>
    </div>
</div>



</body>
</html>
</body>
</html>
