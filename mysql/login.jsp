<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>  <%--标题--%>
</head>
<body>
<center>
    <form action="doLogin.jsp" method="post">  <%--提交请求到doLogin页面--%>
        <label>用户名：</label><input id="username" type="text" name="username"><br/>  <%--一个标签和一个text类型的输入框--%>
        <label>密码：</label><input id="password" type="password" name="password"><br/>  <%--一个标签和一个password类型的输入框--%>
        <input id="submit" type="submit" name="登录">  <%--提交按钮--%>
        <a href="register.jsp">注册</a>  <%--跳转到register界面--%>
    </form>
</center>
</body>
</html>
