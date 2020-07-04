<%--
  Created by IntelliJ IDEA.
  User: djy
  Date: 2020/6/30
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
</head>

<h1>注册页面</h1>
<hr>
<body>

<form action="${pageContext.request.contextPath}/register" method="post">
    用户名：<input type="text" name="name"> <br>
    密码：<input type="password" name="password"> <br>
    <input type="submit" value="注册">

</form>

</body>
</html>
