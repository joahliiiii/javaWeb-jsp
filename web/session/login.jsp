<%--
  Created by IntelliJ IDEA.
  User: joah
  Date: 17-8-27
  Time: 下午6:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <script  type="text/javascript" charset="utf-8">
        function _changecode() {
            var element = document.getElementById("vcodeImg");
//            在这里如果说url,后面不加问号和后面的东西,
//            因为cache的原因,会被浏览器认为是和之前发的图片一样,然后他就读取缓存,然后不更新
            element.src="${pageContext.request.contextPath}/verfifyCodeServlet?"+new Date().getTime();
            <%--document.write(${pageContext.request.contextPath});--%>
        }
    </script>
</head>
<body>
    <%--读取cookie--%>
    <%
        String usrname="";
        // 获取所有的cookie
        Cookie[] cookies = request.getCookies();
        // 如果存在cookie
        if(cookies!=null){
            // 便利cookie
            for (Cookie cookie : cookies) {
                // 如果有名字为 username的cookie
                if("username".equalsIgnoreCase(cookie.getName())){
                    usrname=cookie.getValue();
                }
            }
        }
    %>
     <%--在这里默认的正确的用户名密码为 summering - joah--%>
    <%
//        String msg="";
        String loginMsg = (String) request.getAttribute("loginMsg");
        // 如果登录状态信息是 failed
//        loginStatus="failed";
        if(loginMsg!=null){
//            if(loginMsg.equals("failed") ){
                //msg="Login failed!!Please check your username or password!";
    %>
                <font color="red" ><%=loginMsg%></font>
    <%
//            }
        }
    %>
    <%--<font color="red" ></font>--%>
    <form action="/loginServlet" method="post">
        <%--使用cookie来填写username--%>
        username: <input type="text" name="username" value="<%=usrname%>"><br>
        password: <input type="password" name="password"><br>
        Verification code: <input type="text" name="vcode" size="11">
        <img id="vcodeImg" src="${pageContext.request.contextPath}/verfifyCodeServlet">
            <a href="javascript:_changeVcode()">change</a> <br>
        <button type="submit">Login</button>
        <p></p>
    </form>

    <br>
    <%
        // 重写URL实例
        // 目前来看这个encodeURL()的参数可以带项目名 也可以不带项目名
        // 会先查看cookie是否存在,如果不存在的话在指定的URL后面添加jsessionid
        //                      如果存在的话就不会在URL后面添加任何东西
        String s = response.encodeURL("/session");
        response.getWriter().write("s: "+s+"<br>");
        out.println("--"+s+"--");
        out.print("request.getContextPath(): "+request.getContextPath()+"<br>");
        out.print("pageContext.getRequest().getServletContext():"+pageContext.getRequest().getServletContext());
//        out.print(pageContext.request.contextPath);
    %>
</body>
</html>
