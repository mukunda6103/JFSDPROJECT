<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Success Registration</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        /* Reset and base styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #ecf0f1;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding: 20px;
        }

        .message-container {
            background-color: #fff;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            padding: 2rem;
            border-radius: 8px;
            width: 100%;
            max-width: 600px;
            text-align: center;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
            font-size: 1.8rem;
        }

        .message {
            font-size: 1.2rem;
            color: #27ae60;
            margin-bottom: 30px;
        }

        .links {
            margin-top: 20px;
        }

        .links a {
            text-decoration: none;
            color: #fff;
            background-color: #1abc9c;
            padding: 12px 25px;
            border-radius: 5px;
            font-size: 1rem;
            margin: 10px;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .links a:hover {
            background-color: #16a085;
        }

        /* Responsive Styling */
        @media (max-width: 600px) {
            .message-container {
                width: 90%;
                padding: 1.5rem;
            }
        }
    </style>
</head>
<body>

    <div class="message-container">
        <h2>Registration Successful!</h2>
        <div class="message">
            <c:out value="${message}"></c:out>
        </div>
        <div class="links">
            <a href="addcompany">Add Company</a>
            <a href="adminhome">Admin Home</a>
        </div>
    </div>

</body>
</html>
