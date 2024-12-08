<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Applied Jobs</title>
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
            margin: 0;
        }

        /* Navbar Styling */
        nav {
            background-color: #34495e;
            padding: 1rem;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
        }

        /* Table Container */
        .table-container {
            background-color: #fff;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            padding: 2rem;
            border-radius: 8px;
            width: 100%;
            max-width: 800px;
            margin: 20px auto;
            text-align: center;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
            font-size: 1.8rem;
        }

        .background-text {
            font-size: 1.1rem;
            color: #7f8c8d;
            margin-bottom: 30px;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table th,
        table td {
            padding: 12px 15px;
            text-align: left;
            font-size: 1rem;
            border: 1px solid #ddd;
        }

        table th {
            background-color: #1abc9c;
            color: white;
            font-weight: bold;
        }

        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        table tr:hover {
            background-color: #ecf0f1;
        }

        .no-records {
            text-align: center;
            font-size: 1.2rem;
            color: #e74c3c;
            margin-top: 20px;
        }

        /* Responsive Styling */
        @media (max-width: 768px) {
            .table-container {
                padding: 1.5rem;
            }

            table th,
            table td {
                font-size: 0.9rem;
                padding: 10px;
            }
        }
    </style>
</head>
<body>

<%@ include file="studentnavbar.jsp" %>

<div class="table-container">
    <h2>Applied Jobs</h2>
    <div class="background-text">Here are the jobs you have applied for.</div>

    <table>
        <tr>
            <th>Applicant ID</th>
            <th>Applied Time</th>
            <th>Job Status</th>
        </tr>
        <c:forEach items="${appliedlist}" var="app">
            <tr>
                <td><c:out value="${app.applicantId}"></c:out></td>
                <td><c:out value="${app.appliedTime}"></c:out></td>
                <td><c:out value="${app.jobStatus}"></c:out></td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
