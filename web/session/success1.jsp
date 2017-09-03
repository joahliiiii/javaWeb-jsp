<%--
  Created by IntelliJ IDEA.
  User: joah
  Date: 17-8-27
  Time: 下午6:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>success1</title>
</head>
<body>
    <%
        String msg="";
        //先获取登录状态
        String loginStatus = (String) session.getAttribute("loginStatus");
        String username = (String) session.getAttribute("username");
        String password = (String) session.getAttribute("password");
        // 这里如果说session有内容的话说明是之前用户名密码匹配了
        if(username!=null && password!=null){
            msg="Login successful!";
    %>
            <font color="green"><%=msg%></font>
            <h3>Welcome <%=username%></h3>
    <%
        }else{
            request.setAttribute("loginStatus","failed");
            request.getRequestDispatcher("/session/login.jsp").forward(request,response);
//            response.sendRedirect("/session/login.jsp");
        }
    %>
</body>
</html>
