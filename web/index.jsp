<%--
  Created by IntelliJ IDEA.
  User: joah
  Date: 17-8-26
  Time: 下午8:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <%
        response.getWriter().write("hello page!"+"<br>");
        int a=0;
    %>
    <%=
       a
    %>
    <%!
        int a=100;
    %>
    <%
        response.getWriter().write("--a: "+a+" this.a : "+this.a+"--");
    %>

    <table border="1" width="40%" align="center">
      <caption>table title and/or explanatory text</caption>
      <thead>
        <tr>
          <th colspan="2">header</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Name</td>
          <td>Score</td>
        </tr>
       <%
          for (int i=0; i<10; i++) {
       %>
        <tr>
          <td>SummeringWang</td>
          <td>100</td>
        </tr>
       <%
          }
       %>
      </tbody>
    </table>
  </body>
</html>
