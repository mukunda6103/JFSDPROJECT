<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Company Login</title>
     <link type="text/css" rel="stylesheet" href="css/login.css">
</head>
<body>
    <div class="login-container">
        <h3>Company Login</h3>
        
        <c:if test="${not empty message}">
            <p class="error-message"><c:out value="${message}" /></p>
        </c:if>

        <form method="post" action="checkcompanylogin">
            <div class="input-group">
                <label for="cemail">Enter Company Email</label>
                <input type="text" id="cemail" name="cemail" required />
            </div>
            <div class="input-group">
                <label for="cpwd">Enter Password</label>
                <input type="password" id="cpwd" name="cpwd" required />
            </div>
            <div class="button-container">
                <button type="submit" class="btn">Login</button>
                <button type="reset" class="btn" style="background-color: #6a11cb;">Clear</button>
            </div>
            <div class="back-link-container">
                <span><a href="/">Back to Home</a></span>
            </div>
        </form>
    </div>
</body>
</html>
