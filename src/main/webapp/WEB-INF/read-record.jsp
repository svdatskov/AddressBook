<%--
  Created by IntelliJ IDEA.
  User: svdatskov
  Date: 19.07.2020
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Read record</title>
</head>
<style>
    .border {
        border-right: 1px solid black;
        padding-left: 3px;
        padding-right: 6px;
    }

    .parameters {
        font-weight: bold;
    }
</style>
<body>
    <tr>
        <td>
            <a class="border" href="/home">Home Page</a>
        </td>
        <td>
            <a class="border" href="/records/create">Add new record</a>
        </td>
        <td>
            <a href="/records/list">Show all records</a>
        </td>
    </tr>
    <h2></h2>
    <p>First name: <span class="parameters"><%=request.getAttribute("firstName")%></span></p>
    <p>Last name: <span class="parameters"><%=request.getAttribute("lastName")%></span></p>
    <p>Address: <span class="parameters"><%=request.getAttribute("address")%></span></p>
</body>
</html>
