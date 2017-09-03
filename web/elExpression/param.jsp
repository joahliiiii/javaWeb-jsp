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
  Time: 下午12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>param</title>
</head>
<body>
    <%

    %>
    <%--http://localhost:8080/elExpression/param.jsp?username=summering&hobby=llllv&hobby=joah--%>
    ${param.username}
    <br>
    ${paramValues.hobby[0]}
    ${paramValues.hobby[1]}

    <br>
    ${header['User-Agent']}
    <%--Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:55.0) Gecko/20100101 Firefox/55.0 --%>
    <br>${header.host}
    <br>${headerValues}

    <%--读取web.xml配置的context-param 的内容--%>
    <br>${initParam.xxx}

    <%-- Map<String ,Cookie >--%>

    <br>${cookie.JSESSIONID.name}<span> : </span>
    ${cookie.JSESSIONID.value}
    <br> ${pageContext.request.scheme}
    ${pageContext.request.method}<span>-</span>
    <%--在这里输出的是项目名.--%>
    ${pageContext.request.contextPath}
    <br><span>sessionID: </span>${pageContext.session.id}
</body>
</html>
