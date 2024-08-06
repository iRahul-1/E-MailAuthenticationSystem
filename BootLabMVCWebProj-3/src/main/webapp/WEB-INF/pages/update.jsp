<%@page import="com.mvcproj.entity.UserRegistration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update User Profile</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            font-weight: bold;
        }
    </style>
</head>
<body>
<% UserRegistration user = (UserRegistration)request.getAttribute("user");%>
    <div class="container">
        <h2>Update User Profile</h2>
        <form action="data_edit" method="post">
            <div class="form-group">
                <label for="id">User Id:</label>
                <input type="text" id="id" name="id" value="<%=user.getId()%>" class="form-control" readonly>
            </div>
            <div class="form-group">
                <label for="userName">User Name:</label>
                <input type="text" id="userName" name="userName" value="<%=user.getUserName()%>" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" value="<%=user.getPassword()%>" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="eMail">E-mail:</label>
                <input type="email" id="eMail" name="eMail" value="<%=user.getEMail()%>" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="birthDay">Birthday:</label>
                <input type="text" id="birthDay" name="birthDay" value="<%=user.getBirthDay()%>" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="profession">Profession:</label>
                <input type="text" id="profession" name="profession" value="<%=user.getProfession()%>" class="form-control" required>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
        </form>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
