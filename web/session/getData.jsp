<%--
  Created by IntelliJ IDEA.
  User: joah
  Date: 17-8-27
  Time: 下午5:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <p>get</p>
    <%
        Object username = session.getAttribute("username");

    %>
    <%=username
    %>
</body>
</html>
