<%--
  Created by IntelliJ IDEA.
  User: joah
  Date: 17-8-30
  Time: 下午3:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forward2</title>
</head>
<body>
    <h1>forward2 .jsp</h1>
    <%
        String name=request.getParameter("Name");
        String score=request.getParameter("Score");
        out.print("Name:"+name+" Score:"+score+"<br>");
    %>
</body>
</html>
