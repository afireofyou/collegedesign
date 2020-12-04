<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/1 0001
  Time: 18:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="utf-8" isELIgnored="false"%>
<!doctype html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Show Time</title>
  <link rel="stylesheet" type="text/css" href="./static/css/one.css">
  <script type="text/javascript" src="https://lib.sinaapp.com/js/jquery/2.0.2/jquery-2.0.2.min.js"></script>
  <script>
    $(function () {
      $(".preson_info").click(function () {

            if( $(".indexes_left").css("display")=="none"){
              $(".indexes_left").css("display","block");}else{  $(".indexes_left").css("display","none");}

        // alert("HellO")
      })
      $(".log").click(function () {
        if( $(".indexes_log").css("display")=="none")
        {
        $(".indexes_log").css("display","block");
        } else{ $(".indexes_log").css("display","none")}
      })
      $("#subject").mouseover(function () {
          if( $(".subject").css("display")=="none")
          {
              $(".subject").css("display","block");
          }
      })
        $(".text").mouseover(function () {
            $(".subject").css("display","none");

        })



    })

  </script>
</head>
<body>
<div class="index">

  <div class="index-img">
    <img class="logoImg" src="https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1354268575,1268995723&fm=26&gp=0.jpg"
         style="width: 80px;height: 80px;border-radius: 50%;border: 1px dotted purple;margin-left: 0px;">
    <!--   <img class="index-img" src="../static/img/image1.png" th:src="@{/img/image1.png}">-->
  </div>
  <p ><a href="">${username}の学习网站</a></p>
  <ul>
    <li><a href="#more">关于</a></li>
    <li><a href="#more">日记</a></li>
    <!-- <li>首页</li>-->
    <!--<li>科目</li>-->
    <li><a href="#more">查找</a></li>
    <li><a href="#more">常用</a></li>
    <li><a href="#more">选择</a></li>
    <li id="subject"><a>科目</a></li>
  </ul>

    <div class="subject" style="width: 100px;height:
    auto;background-color: gray;margin-left: 614px;margin-top: -40px;text-align: center;cursor: pointer;">
<%--        <%--%>
<%--            for(var i=0;i<5;i++){--%>
<%--        %>--%>
<%--            <p>7879797</p>--%>
<%--        <%   }  %>--%>
    <c:forEach var="login_items" items="${itemss}">
        <div class="items"><a href="${login_items.urls}.jsp">${login_items.subject}</a></div>
    </c:forEach>

    </div>
</div>






<div class="indexes">
  <div class="indexes_left">
        <div class="left_head">${username}の个人信息</div>
        <div  class="left_img"> <img class="logoImg" src="https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1354268575,1268995723&fm=26&gp=0.jpg"
                                     style="width: 60px;height: 60px;border-radius: 50%;border: 1px dotted purple;margin-right: 1px;"></div>
        <p>${username}</p>
    <br>
        <a>1</a>
        <a>2</a>
        <a>3</a>
    <p>个人标签</p>
        <p class="pp" style="font-family: 'Adobe Arabic'">
       <a>二次元</a>
       <a>音乐</a>
       <a>高达</a>
          <a>绘画</a>
          <a>编程</a>
          <br>
          <a id="ajax_like">+</a>
        </p>
  </div>
  <div class="indexes_right">
    <p >今日完成（1/5）</p>
    <br>
    <div class="indexes-1">
      <div class="indexes-1-2"></div>
    </div>
    <div class="indexes-2"></div>
    <div class="indexes-3"></div>
    <div class="indexes-4"></div>
    <br>
    <br>

    <div class="preson_info" style="cursor: pointer">个人信息</div>
    <div class="log" style="cursor: pointer">彼得一激灵</div>
  </div>

  <form action="/log" method="post">
<%--    <input type="text" name="my_log" id="my_log" style="height: 60px">--%>


    <div class="indexes_log">灵感&日记
    <input  id="log_message" name="log_message">
    <input type="submit" id="my_log_btn">
    </div>
  </form>


</div>
<br>
<br>
<div class="text">
  <br>
  <br>
  <div class="text1">
    数学<br>昨天复习了12小时，今天
<%--    <div><a href="website1.html" target="_blank">rework</a></div>--%>
  </div>
  <div class="text2">
    英语 <br>昨天复习了12小时，今天
<%--    <div><a href="website1.html" target="_blank">rework</a></div>--%>
  </div>
  <div class="text3">
    英语 <br>昨天复习了12小时，今天
<%--    <div><a href="website1.html" target="_blank">rework</a></div>--%>
  </div>
  <div class="text4">
    英语 <br>昨天复习了12小时，今天
<%--    <div><a href="website1.html" target="_blank">rework</a></div>--%>
  </div>
  <br>
  <br>
  <div class="more" id="more"> More choice</div>
  <br>
    <div class="luxun">
  知之为知之，不知为不知，是知也<br>
</div>
  <div class="vlog">

    <div class="vlog-1">物理</div>
    <div class="vlog-2">绘画</div>
    <div class="vlog-3">音乐</div>
    <div class="vlog-4">生物</div>

  </div>
</div>

<br>
<br>
<br>
<br>
<div class="end">

  <p>常用网站</p>
  <a>AC</a>
  <a href="https://www.bilibili.com/?spm_id_from=333.788.b_696e7465726e6174696f6e616c486561646572.1" target="_blank">bili</a>
  <a>游侠</a>
  <br>
  <p>学习网站</p>
  <a>知网</a>
  <a>专利</a>
</div>

</body>
</html>