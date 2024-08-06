<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.mvcproj.entity.UserRegistration" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Data</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 25px auto;
            font-size: 18px;
            text-align: left;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        h1 {
            text-align: center;
            color: red;
        }
        .btn {
            padding: 8px 16px;
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            border-radius: 4px;
        }
        .btn.edit {
            background-color: #28a745;
        }
        .btn.delete {
            background-color: #dc3545;
        }
        .btn-container {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<%
    List<UserRegistration> userData = (List<UserRegistration>) request.getAttribute("userData");
%>

<% if (userData != null && !userData.isEmpty()) { %>
    <h1>User Data</h1>
    <table border="1" align="center">
        <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>EMAIL</th>
                <th>BIRTHDAY</th>
                <th>PROFESSION</th>
                <th>ACTION</th>
            </tr>
        </thead>
        <tbody>
            <% for (UserRegistration data : userData) { %>
                <tr>
                    <td><%= data.getId() %></td>
                    <td><%= data.getUserName() %></td>
                    <td><%= data.getEMail()%></td>
                    <td><%= data.getBirthDay() %></td>
                    <td><%= data.getProfession() %></td>
                    <td>
                        <a href="data_edit?id=<%= data.getId() %>" class="btn edit">Edit</a>
                        <a href="data_delete?id=<%= data.getId() %>" class="btn delete">Delete</a>
                    </td>
                </tr>
            <% } %>
        </tbody>
    </table>
<% } else { %>
    <h1>Employees Not Found</h1>
<% } %>

<div class="btn-container">
    <a href="registration" class="btn"> Add Employee
    </a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="./" class="btn"> Home
    </a>
</div>

</body>
</html>
