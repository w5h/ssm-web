<%--
  Created by IntelliJ IDEA.
  User: 45200
  Date: 2021/1/31
  Time: 22:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() +
            ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <title>注册学生</title>
    <base href="<%=basePath%>"/>
</head>
<body>
    <div align="center">
        <form action="user/adduser.do" method="post">
            <table>
                <tr>
                    <td>用户名:</td>
                    <td><input type="text" name="username"></td>
                </tr>
                <tr>
                    <td>密码:</td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td>邮箱:</td>
                    <td><input type="email" name="email"></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="submit" value="注册"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
