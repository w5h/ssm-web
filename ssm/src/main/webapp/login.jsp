<%--
  Created by IntelliJ IDEA.
  User: 45200
  Date: 2021/2/1
  Time: 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() +
            ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <title>登录页面</title>
    <base href="<%=basePath%>"/>
</head>
<body>
<div align="center">
    <form action="user/user_login.do" method="post">
        <table>
            <tr>
                <td>用户名:</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>密码:</td>
                <td><input type="password" name="password"></td>
            </tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><input type="submit" value="登录"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
