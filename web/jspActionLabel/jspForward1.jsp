<%--
  Created by IntelliJ IDEA.
  User: joah
  Date: 17-8-30
  Time: 下午3:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forward</title>
</head>
<body>
    <h1>forward 1.jsp</h1>
    <jsp:forward page="jspForward2.jsp">
        <%--jsp:param 用来作为forward 和 include 的子标签! 用来转发或包含的页面参数传递--%>
        <jsp:param name="Name" value="summering"></jsp:param>
        <jsp:param name="Score" value="250"></jsp:param>
    </jsp:forward>
</body>
</html>
