<%@page import="com.placement.project.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Student st = (Student) session.getAttribute("student");
	if(st==null){
		response.sendRedirect("studentsessionexpiry.jsp");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Main Navbar</title>
    <link rel="stylesheet" type="text/css" href="/css/navbar.css">
</head>
<body>
<nav>
	<ul>
		<li><a href="studenthome">home</a></li>
		<li><a href="studentviewalljobs">view all jobs</a></li>
		<li><a href="studentviewappliedjobs">view applied jobs</a></li>
		<li><a href="studentlogout">Logout</a></li>
	</ul>
</nav>
</body>
</html>