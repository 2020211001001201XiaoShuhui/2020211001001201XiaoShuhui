<%--
  Created by IntelliJ IDEA.
  User: 偏执
  Date: 2022/5/1
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Demo #1-week 10</title>
</head>
<body>
<h2>Use of to set,get,remove attribute from 4 scopes:page,request,session,application </h2>
<%
    //set attribute in page ,request,session,application
    //pageContext.setAttribute("attName","in page");
    request.setAttribute("attName","in request");
    session.setAttribute("attName","in session");
    //application.setAttribute("attName","in application");
    //set using page context
    pageContext.setAttribute("attName","in application",PageContext.APPLICATION_SCOPE);

%>
<h2>Get attribute using implicit object-way 1</h2>
Att Value :<%=pageContext.getAttribute("attName")%><br>
Att Value :<%=request.getAttribute("attName")%><br>
Att Value :<%=session.getAttribute("attName")%><br>
Att Value :<%=application.getAttribute("attName")%><br>

<h2>Get attribute using pageContext -way 2</h2>
Att Value <%=pageContext.getAttribute("attName",PageContext.PAGE_SCOPE)%><br>
Att Value <%=pageContext.getAttribute("attName",PageContext.REQUEST_SCOPE)%><br>
Att Value <%=pageContext.getAttribute("attName",PageContext.SESSION_SCOPE)%><br>
Att Value <%=pageContext.getAttribute("attName",PageContext.APPLICATION_SCOPE)%><br>

<h2>Use findAttrubute of pageContext-search-page-request-session-application-null</h2>
Att Value :<%=pageContext.findAttribute("attName")%>(which one?)
</body>
</html>
