<%--
  Created by IntelliJ IDEA.
  User: svdatskov
  Date: 18.07.2020
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create record</title>
</head>
<style>
    .border {
        border-right: 1px solid black;
        padding-left: 3px;
        padding-right: 6px;
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
    <form action="/records/create" method="post">
        <table>
            <tr>
                <td>
                    <label for="firstName">First Name: </label>
                </td>
                <td>
                    <input type="text" id="firstName" name="firstName">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="lastName">Last Name: </label>
                </td>
                <td>
                    <input type="text" id="lastName" name="lastName">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="address">Address: </label>
                </td>
                <td>
                    <textarea cols="40"  rows="3" id="address" name="address"></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Create">
                </td>
                <td>
                    <input type="reset" value="Clear">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
