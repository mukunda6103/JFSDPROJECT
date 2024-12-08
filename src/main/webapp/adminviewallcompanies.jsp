<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Company List</title>
    <link type="text/css" rel="stylesheet" href="css/viewall.css">
    
</head>

<body>
    <%@ include file="adminnavbar.jsp" %>

   
    <div class="table-container">
        <h2>Company List</h2>

        
        <c:if test="${empty companylist}">
            <p class="no-records">No companies found.</p>
        </c:if>

        <!-- Table for displaying companies -->
        <table>
            <thead>
                <tr>
                    <th>Company Email</th>
                    <th>Company Field</th>
                    <th>Company Location</th>
                    <th>Company Name</th>
                </tr>
            </thead>
            <tbody>
                <!-- Iterate through the company list and display each company -->
                <c:forEach items="${companylist}" var="comp">
                    <tr>
                        <td><c:out value="${comp.email}"></c:out></td>
                        <td><c:out value="${comp.field}"></c:out></td>
                        <td><c:out value="${comp.location}"></c:out></td>
                        <td><c:out value="${comp.name}"></c:out></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>

</html>
