<%@ page import="Code.User" %>
<%@ page import="Code.UserService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>   <%--标题--%>
</head>
<body>
<%
    request.setCharacterEncoding("utf8");// 设置字符集，避免出现乱码
    String username = request.getParameter("username");// 获取用户输入的username
    String password = request.getParameter("password");// 获取用户输入的password
    User user = new User(username, password);// 创建用户对象
    UserService userService = (UserService) session.getAttribute("userService");// 获取存储在session对象中的业务系统对象
    if (userService.login(user)) {// 如果登录成功
%>
<center>
    <h1>登录成功</h1>
    <a href="index.jsp">返回首页</a>  <%--跳转到index界面--%>
</center>
<%
} else {// 如果登录失败
%>
<center>
    <h1>登录失败</h1>
    <a href="login.jsp">重新登陆</a>  <%--跳转到login界面--%>
</center>
<%}%>
</body>
</html>



