<%@ page import="Code.UserService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>首页</title>  <%--标题--%>
</head>
<body>
<%
  UserService userService = new UserService();// 创建业务系统对象
  session.setAttribute("userService", userService);// 将业务系统对象放入session对象中储存，让其他界面也能够使用该业务系统对象
%>
<center>
  <a href="login.jsp">登录</a>  <%--跳转到login界面--%>
  <br>
  <a href="register.jsp">注册</a>  <%--跳转到register界面--%>
</center>
</body>
</html>
