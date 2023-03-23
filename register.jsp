<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>  <%--标题--%>
</head>
<body>
<center>
    <form action="doRegister.jsp" method="post">  <%--提交请求到doLogin页面--%>
        <label>用户名：</label><input id="username" type="text" name="username"><br/>  <%--一个标签和一个text类型的输入框--%>
        <label>密码：</label><input id="password" type="password" name="password"><br/>  <%--一个标签和一个password类型的输入框--%>
        <label>性别：</label><select id="sex" name="sex"> <%--一个标签和一个下拉框--%>
        <option value="男">男</option>  <%--选项：男--%>
        <option value="女">女</option>  <%--选项：女--%>
    </select>
        <br/>
        <input id="submit" type="submit" name="提交">  <%--提交按钮--%>
    </form>
</center>
</body>
</html>





