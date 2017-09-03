<%@ page import="javaBean.Person" %>
<%@ page import="javaBean.Address" %>
<%@ page import="java.util.Date" %>

<%--
  Created by IntelliJ IDEA.
  User: joah
  Date: 17-8-31
  Time: 上午10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="jh" uri="/WEB-INF/tlds/tagTld.tld" %>
<html>
<head>
    <title>elTest</title>
</head>
<body>
    <%
        Person person=new Person();
        person.setName("summering");
        person.setId("552976");
        person.setAge(22);
        Address address=new Address();
        address.setProvince("immgl");
        address.setCity("byne");
        address.setArea("hjhq");
        address.setStreet("shuangmiao");
        person.setAddress(address);

        request.setAttribute("person",person);
    %>
    ${requestScope.person.address.street}
    <br>

    <%
        request.setAttribute("code","<script>alert(\"hello\")</script>");
    %>
    <%--<c:out value="${code} " escapeXml="false"/>--%>
    <br><c:out value="${code}"/>

    <c:set var="name" value="Summering" />
    <br> <span>pageContext.name:</span>    <c:out value="${name}"/>
    <c:set var="name" value="Joah" scope="request"/>
    <br><span>request.name: </span> <c:out value="${requestScope.name}"/>

    <%--移除一个属性--%>
    <br><span>移除page的name属性</span><br> <c:remove var="name" scope="page"/>
    <c:out value="${pageScope.name}"/><br><c:out value="${requestScope.name}"/><span>--over</span><br>
    <br><span>--</span><c:remove var="name"/>
    <c:out value="${name}"/><span>--</span>

    <%--C:URL--%>
    <br><span>c:url : </span><c:url value="/index.jsp"/>
    <%--给URL后面添加参数--%>
    <c:url value="elTest.jsp" var="path" scope="request">
        <c:param name="username" value="Summering"/>
    </c:url>
    <br><span>request.path : </span><c:out value="${requestScope.path}"/>
    <br> <c:url value="/loginServlet"/>
    <br> ${pageContext.request.contextPath}/loginServlet
    <br><a href="<c:url value="/index.jsp"/>">click to index.jsp</a>
    <br><a href="<c:url value="/session/login.jsp"/>">click to login.jsp</a>

    <%--<c:set var="score" value="100" scope="page" />--%>
    <c:set var="score" value="${param.score}"/>
    <br><c:choose>
        <c:when test="${pageScope.score>90}">90+</c:when>
        <c:when test="${pageScope.score>80}">80+</c:when>
        <c:otherwise>60-</c:otherwise>
    </c:choose>
    <br>
    <c:forEach var="i" begin="1" end="10" step="3">
        ${i}
        <c:if test="${i==10}"><p>i = 10</p></c:if>
    </c:forEach>
    <br>
    <c:set var="numbers" value="[summering,joah,mechile,jams]" scope="page"/>
    <c:forEach items="${pageScope.numbers}" var="i">
        ${i}
    </c:forEach>
    <br>
    <c:forEach items="${pageScope.numbers}" var="number" varStatus="vs">
        <%--${number}--%>
        <c:if test="${vs.first}">is first <br></c:if>
        <c:out value="第${vs.count}个: ${vs.current}"/> <br>
        <%--<span><br>current: </span><c:out value="${vs.current}"/>--%>
        <c:if test="${vs.last}">is last <br></c:if>
    </c:forEach>
    <br>
    <%--fmt 标签--%>
    <%
        Date currDate = new Date();
        request.setAttribute("currDate",currDate);
    %>
    <%--<c:set var="currDate" value="new Date()" scope="page"/>--%>
    <fmt:formatDate value="${currDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
    <%
        float a=2.3F;
        float b=3.129F;
        request.setAttribute("a",a);
        request.setAttribute("b" ,b);
    %>
    <br><fmt:formatNumber pattern="#.##"  value="${requestScope.a}"/>
    <br><fmt:formatNumber pattern="0.5##56" value="${requestScope.b}"/>
    <%--猜测: 保留两位小数再加上后面的556,保留之前会进行四舍五入--%>
    <%--输出3.13556--%>
    <br><fmt:formatNumber pattern="0.##556" value="${requestScope.b}"/>


    <%--自定义标签--%>
    <br><span>自定义标签: </span><jh:tag1/>
    <br><span>自定义标签2: </span><jh:tag2/>
    <c:set var="tg" value="Summering" scope="application"/>
    <%--<c:set var="tg" value="joah" scope="request"/>--%>
    <br><span>自定义标签3: </span><jh:tag3>${pageScope.tg}</jh:tag3>
    <%--<br><span>自定义标签4: </span><jh:tag4/>--%>
    <P>如果抛出了SkipPageException 这个和下面内容不会显示</P>
    <span>自定义标签5: </span><jh:tag5 test="${param.tg}"/>
    <%
//        request.setAttribute("tg","pppp");
    %>
    <br><span>测试param: </span><c:out value="${param.tg}"/>
    <br><span>测试request : </span><c:out value="${requestScope.tg}"/>
</body>
</html>
