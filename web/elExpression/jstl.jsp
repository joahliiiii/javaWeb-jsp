<%--
  ~ Copyright (c) 2017. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
  ~ Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan. 
  ~ Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna. 
  ~ Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus. 
  ~ Vestibulum commodo. Ut rhoncus gravida arcu. 
  --%>

<%--
  Created by IntelliJ IDEA.
  User: joah
  Date: 17-8-31
  Time: 下午4:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:if test="${3>2}">
        <p>welcome</p>
    </c:if>
    <br>
    ${fn:toUpperCase("hello")}
    ${fn:toLowerCase("SUMMERING")}
    <%--<br> <c:out value="${aaa}"/>--%>
</body>
</html>
