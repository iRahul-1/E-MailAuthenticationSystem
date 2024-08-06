<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Successful</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .card {
            border-radius: 10px;
        }
        .card-header {
            background-color: #007bff;
            color: white;
            font-size: 24px;
            text-align: center;
            border-radius: 10px 10px 0 0;
        }
        .card-body {
            padding: 20px;
        }
        .card-body p {
            font-size: 18px;
        }
        .footer {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
<%String  username = (String)request.getAttribute("username");
   String  email = (String)request.getAttribute("email");%>
    <div class="container">
        <div class="card">
            <div class="card-header">
                Registration Successful
            </div>
            <div class="card-body">
                <h5 class="card-title">Check your email for further instructions</h5>
                <p class="card-text">Name: ${username}</p>
                <p class="card-text">Email: ${email}</p>
            </div>
        </div>
        <div class="footer">
            <a href="./" class="btn btn-primary">Go to Home</a>
        </div>
    </div>

    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
