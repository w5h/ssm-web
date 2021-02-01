<%--
  Created by IntelliJ IDEA.
  User: 45200
  Date: 2021/1/31
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() +
            ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <title>功能入口</title>
    <base href="<%=basePath%>"/>
</head>
<body>
<table align="center">
    <tr>
        <td><a href="addUser.jsp">注册用户</a></td>
    </tr>
    <tr>
        <td>浏览用户</td>
    </tr>
    <tr>
        <td><a href="login.jsp">登录</a></td>
    </tr>
</table>
</body>
</html>
