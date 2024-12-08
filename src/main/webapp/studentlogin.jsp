<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Login</title>
    <link type="text/css" rel="stylesheet" href="css/login.css">
</head>
<body>
    <div class="login-container">
        <h3>Student Login</h3>
        
        <c:if test="${not empty message}">
            <p class="error-message"><c:out value="${message}" /></p>
        </c:if>

        <form method="post" action="checkstudentlogin">
            <div class="input-group">
                <label for="studentid">Enter ID</label>
                <input type="number" min="2200030000" max="2200040000" id="studentid" name="studentid" required />
            </div>
            <div class="input-group">
                <label for="studentpassword">Enter Password</label>
                <input type="password" id="studentpassword" name="studentpassword" required />
            </div>
            <div class="button-container">
                <button type="submit" class="btn">Login</button>
                <br><br>
                <span>New here? <a href="addstudent">Register here</a></span>
                <br><br>
                <span> <a href="/">Back to Home</a></span>
            </div>
        </form>
    </div>
</body>
</html>
