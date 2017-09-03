<%--
  Created by IntelliJ IDEA.
  User: joah
  Date: 17-8-27
  Time: 上午9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>result</title>
</head>
<body>
    <%
        Object result = request.getAttribute("result");
        response.getWriter().write("result: ");
    %>
    <%=result%>
    <%
        response.getWriter().write("<br>hello");
    %>
</body>
</html>
