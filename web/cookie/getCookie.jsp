<%--
  Created by IntelliJ IDEA.
  User: joah
  Date: 17-8-27
  Time: 下午3:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>get</title>
</head>
<body>
    <p>Get cookie!</p>
    <%
        Cookie[] cookies = request.getCookies();
        if (cookies!=null){
            for (Cookie cookie : cookies) {
                out.print(cookie.getName()+" : "+cookie.getValue()+"<br>");
            }
        }
    %>
</body>
</html>
