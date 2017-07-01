<%--
  Created by IntelliJ IDEA.
  User: 林进华
  Date: 2017/7/1
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="${pageContext.request.contextPath }/rigister1.jsp">点我</a>
<%pageContext.forward("/rigister1.jsp");
%>
</body>
</html>
