<%@page import="com.placement.project.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    Admin a = (Admin) session.getAttribute("admin");
    if (a == null) {
        response.sendRedirect("adminsessionexpiry");
        return;
    }
%>
<head>
    <meta charset="UTF-8">
    <title>Main Navbar</title>
<link rel="stylesheet" type="text/css" href="/css/navbar.css">
</head>
<body>

<nav>
    <ul>
        <li><a href="adminhome">Home</a></li>
        <li><a href="addcompany">Add Company</a></li>
        <li><a href="viewallcompanies">View All Companies</a></li>
        <li><a href="viewallstudents">View All Students</a></li>
        <li><a href="adminlogout">Logout</a></li>
       
    </ul>
</nav>

</body>
</html>
