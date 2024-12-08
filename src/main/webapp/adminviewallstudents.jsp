<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Student List</title>
    <link type="text/css" rel="stylesheet" href="css/studentview.css">
   
</head>

<body>

    <!-- Include Navbar -->
    <%@ include file="adminnavbar.jsp" %>

    <!-- Table Content -->
    <div class="table-container">
        <h2>Student List</h2>

        <!-- Display message if no records found -->
        <c:if test="${empty studentlist}">
            <p class="no-records">No students found.</p>
        </c:if>

        <!-- Table for displaying students -->
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Date of Birth</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Department</th>
                    <th>Contact</th>
                </tr>
            </thead>
            <tbody>
                <!-- Iterate through the student list and display each student -->
                <c:forEach items="${studentlist}" var="student">
                    <tr>
                        <td><c:out value="${student.id}"></c:out></td>
                        <td><c:out value="${student.name}"></c:out></td>
                        <td><c:out value="${student.dob}"></c:out></td>
                        <td><c:out value="${student.email}"></c:out></td>
                        <td><c:out value="${student.gender}"></c:out></td>
                        <td><c:out value="${student.department}"></c:out></td>
                        <td><c:out value="${student.contact}"></c:out></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>

</html>
