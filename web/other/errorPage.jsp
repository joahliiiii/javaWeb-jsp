<%--
  Created by IntelliJ IDEA.
  User: joah
  Date: 17-8-30
  Time: 上午9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>errorPage</title>
</head>
<body>
    <h1>Error</h1>
<%
    exception.printStackTrace(response.getWriter());
%>
</body>
</html>
