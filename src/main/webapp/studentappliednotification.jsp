<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Status</title>
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
        padding: 20px;
    }

    /* Message Container */
    .message-container {
        background-color: #fff;
        box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        padding: 2rem;
        border-radius: 8px;
        width: 100%;
        max-width: 600px;
        text-align: center;
        margin: 20px auto;
    }

    h2 {
        font-size: 1.8rem;
        color: #2c3e50;
        margin-bottom: 20px;
    }

    .message-text {
        font-size: 1.2rem;
        padding: 1rem;
        margin: 10px 0;
        border-radius: 8px;
    }

    /* Success Message */
    .message-success {
        background-color: #dff0d8;
        color: #3c763d;
        border: 1px solid #d6e9c6;
    }

    /* Error Message */
    .message-error {
        background-color: #f2dede;
        color: #a94442;
        border: 1px solid #ebccd1;
    }

    /* Navbar styling (optional, in case studentnavbar.jsp doesn't have styles) */
    nav {
        background-color: #34495e;
        padding: 1rem;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        width: 100%;
        text-align: center;
        color: #ecf0f1;
        font-size: 1.2rem;
    }
</style>
</head>
<body>

<%@ include file="studentnavbar.jsp" %>

<div class="message-container">
    <h2>Application Status</h2>
    <div class="message-text <c:choose>
        <c:when test="${message == 'Application successful!'}">message-success</c:when>
        <c:otherwise>message-error</c:otherwise>
    </c:choose>">
        <c:out value="${message}"></c:out>
    </div>
</div>

</body>
</html>
