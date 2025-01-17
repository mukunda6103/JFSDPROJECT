<%@page import="com.placement.project.model.Company"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Company c = (Company) session.getAttribute("company");
    if (c == null) {
        response.sendRedirect("companysessionexpiry.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company Home</title>
<style>
    /* Reset and base styles */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }

    /* Navbar Styling */
    nav {
        background-color: #34495e;
        padding: 1rem;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    }

    nav ul {
        list-style: none;
        display: flex;
        justify-content: center;
    }

    nav ul li {
        margin: 0 20px;
        position: relative;
    }

    nav ul li a {
        color: #ecf0f1;
        text-decoration: none;
        font-size: 1rem;
        font-weight: bold;
        padding: 0.5rem 1rem;
        transition: color 0.3s ease;
        position: relative;
        display: inline-block;
    }

    /* Hover effect - underline animation */
    nav ul li a::before {
        content: '';
        position: absolute;
        width: 100%;
        height: 2px;
        bottom: 0;
        left: 0;
        background-color: #1abc9c;
        visibility: hidden;
        transform: scaleX(0);
        transition: all 0.3s ease-in-out;
    }

    nav ul li a:hover::before {
        visibility: visible;
        transform: scaleX(1);
    }

    /* Hover color change */
    nav ul li a:hover {
        color: #1abc9c;
    }

    /* Dropdown Styling */
    nav ul li ul {
        display: none;
        position: absolute;
        background-color: #2c3e50;
        padding: 0.5rem;
        border-radius: 5px;
        top: 100%;
        left: 50%;
        transform: translateX(-50%);
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    }

    nav ul li:hover ul {
        display: block;
    }

    nav ul li ul li {
        margin: 5px 0;
        text-align: left;
    }

    nav ul li ul li a {
        font-size: 0.9rem;
        color: #ecf0f1;
        padding: 0.3rem 1rem;
        display: block;
        white-space: nowrap;
    }

    nav ul li ul li a:hover {
        background-color: #1abc9c;
        color: #fff;
    }

    /* Responsive Navbar */
    @media (max-width: 768px) {
        nav ul {
            flex-direction: column;
            align-items: center;
        }

        nav ul li {
            margin: 10px 0;
        }
    }
</style>
</head>
<body>

<nav>
    <ul>
        <li><a href="companyhome">Home</a></li>
        <li><a href="addjob">Add Job</a></li>
        <li><a href="viewalljobs">View All Jobs</a></li>
        <li><a href="updateapplicantstatus">Update Applicant's Status</a></li>
        <li><a href="companylogout">Logout</a></li>
    </ul>
</nav>

</body>
</html>
