<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        .form-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #fff;
        }
        .form-group label {
            font-weight: bold;
        }
        .btn-submit {
            background-color: #007bff;
            border: none;
            border-radius: 0.3em;
            color: white;
            padding: 10px 20px;
            cursor: pointer;
        }
        .btn-submit:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center mt-4">Spring MVC Form Demo - Registration</h2>
        <div class="form-container">
            <form action="submitRegistration" method="post">
                <div class="form-group">
                    <label for="username">User Name:</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <div class="form-group">
                    <label for="email">E-mail:</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="birthday">Birthday (mm/dd/yyyy):</label>
                    <input type="text" class="form-control" id="birthday" name="birthday" required>
                </div>
                <div class="form-group">
                    <label for="profession">Profession:</label>
                    <select class="form-control" id="profession" name="profession">
                        <option value="IT Manager">IT Manager</option>
                        <option value="Developer">Developer</option>
                        <option value="Designer">Designer</option>
                        <option value="QA">QA</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
                <div class="text-center">
                    <input type="submit" class="btn btn-submit" value="Register">
                </div>
            </form>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
