<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    
 <link type="text/css" rel="stylesheet" href="css/login.css">
</head>
<body>

    <div class="login-container">
        <h3><u>Administrator</u></h3>
        <form method="post" action="checkadminlogin">
            <div class="input-group">
                <label for="username">Enter Username</label>
                <input type="text" id="username" name="username" class="input-field" required />
            </div>
            <div class="input-group">
                <label for="password">Enter Password</label>
                <input type="password" id="password" name="password" class="input-field" required />
            </div>
            <div class="button-container">
                <button type="submit" class="btn btn-primary">Login</button>
                <br><br>
                 <span> <a href="/">Back to Home</a></span>
                <br><br>
               
            </div>
        </form>
    </div>
</body>
</html>