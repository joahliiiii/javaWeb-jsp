<%--
  Created by IntelliJ IDEA.
  User: joah
  Date: 17-8-27
  Time: 下午5:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>向session保存数据</title>
</head>
<body>
    <p>set session</p>
    <%-- 在这里不需要创建session,他会帮我们创建--%>
    <%
        session.setAttribute("username","joah");
    %>
</body>
</html>
