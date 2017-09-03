<%--
  Created by IntelliJ IDEA.
  User: joah
  Date: 17-8-27
  Time: 下午3:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add</title>
</head>
<body>
    <%--9个内置对象response,request,session,application,pageContext,config,out,page,exception--%>
    <p>Save cookie</p>
    <%
        Cookie cookie=new Cookie("Username","Summering");
        Cookie cookie1 =new Cookie("Scores","150");
        // 设置cookie的寿命
        cookie.setMaxAge(60);
        response.addCookie(cookie);
        response.addCookie(cookie1);
    %>
</body>
</html>
