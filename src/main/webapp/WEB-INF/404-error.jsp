<%--
  Created by IntelliJ IDEA.
  User: svdatskov
  Date: 19.07.2020
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>404-error</title>
</head>
<body>
    <h1>Person with name "<%=request.getAttribute("fullName")%>" not found in Address Book!</h1>
</body>
</html>
