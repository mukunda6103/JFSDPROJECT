<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>
     <link type="text/css" rel="stylesheet" href="css/regsuccess.css">
</head>
<body>
    <div class="container">
        <div class="icon">✅</div>
        <h1>Registration Successful!</h1>
        <p class="message"><c:out value="${message}"></c:out></p>
        <a href="studentlogin" class="login-link">Login Here</a>
    </div>
</body>
</html>
