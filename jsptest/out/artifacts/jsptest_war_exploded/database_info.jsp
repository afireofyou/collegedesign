<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/2 0002
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="utf-8" isELIgnored="false"%>
<html>
<head>
    <title>Index</title>
</head>
<body>
<h1>JCI</h1>
<table  border="1" cellspacing="1" >
    <tr>
        <th>Id</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>电话</th>
        <th>住址</th>
    </tr>
    <c:forEach items="${lista}" var="stus">
        <tr>
            <td> ${stus.id}</td>
            <td>${stus.name}</td>
            <td>${stus.age}</td>
            <td>${stus.tel}</td>
            <td>${stus.address}</td>
        </tr>
    </c:forEach>
    <%--     ${lista["0"]["StudentName"]}--%>

</table>
</body>
</html>

