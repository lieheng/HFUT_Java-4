<%@ page import="Code.User" %>
<%@ page import="Code.UserService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title> <%--标题--%>
</head>
<body>
<%
    request.setCharacterEncoding("utf8");// 设置字符集，避免出现乱码
    String username = request.getParameter("username");// 获取用户输入的username
    String password = request.getParameter("password");// 获取用户输入的password
    String sex = request.getParameter("sex");// 获取用户输入的sex
    User user = new User(username, password, sex);// 创建用户对象
    UserService userService = (UserService) session.getAttribute("userService");// 获取存储在session对象中的业务系统对象
    if (userService.register(user)) {// 如果注册成功
%>
<center>
    <h1>注册成功！用户名为<%=username%>
    </h1>
    <a href="login.jsp">去登录</a> <%--跳转到login界面--%>
</center>
<%
} else {// 如果注册失败
%>
<center>
    <h1>注册失败，用户名已被占用。</h1>
    <a href="register.jsp">重新注册</a> <%--跳转到register界面--%>
</center>
<%}%>
</body>
</html>




