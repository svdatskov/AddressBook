<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of Records from Address Book</title>
</head>
<style>
    .border {
        border-right: 1px solid black;
        padding-left: 3px;
        padding-right: 6px;
    }

    .records-list {
        border: 2px double black;
    }

    td, th {
        border: 1px solid black;
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
<tr></tr>
<h4>Sort by: <a href="/records/list?sort=asc">ascending</a> | <a href="/records/list?sort=desc">descending</a></h4>
<table class="records-list">
    <tr>
        <th>No.</th>
        <th>First name</th>
        <th>Last name</th>
        <th>Address</th>
        <th colspan="3">Operation</th>
    </tr>
    <%
        int count = 0;
        Iterator addressBookIterator = (Iterator) request.getAttribute("records");
        while (addressBookIterator.hasNext()) {
            String str = (String)addressBookIterator.next();
            String[] strSplit = str.split("\\|");
            String firstName = strSplit[0].substring(12);
            String lastName = strSplit[1].substring(12);
            String address = strSplit[2].substring(10);
    %>
    <tr>
        <td><%=++count%></td>
        <td><%=firstName%></td>
        <td><%=lastName%></td>
        <td><%=address%></td>
        <td>
            <a class="border" href="/records/read?first-name=<%=firstName%>&last-name=<%=lastName%>">Read</a>
        </td>
        <td>
            <a class="border" href="/records/update?first-name=<%=firstName%>&last-name=<%=lastName%>">Update</a>
        </td>
        <td>
            <a href="/records/delete?first-name=<%=firstName%>&last-name=<%=lastName%>">Delete</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>