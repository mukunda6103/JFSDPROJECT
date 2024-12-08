<%@page import="com.placement.project.service.StudentService"%>
<%@page import="com.placement.project.model.Applicants"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Jobs</title>
<link type="text/css" rel="stylesheet" href="css/studentview.css">
<script>
    function showPopup() {
        alert("You have applied for the job successfully!");
    }
</script>
</head>

<body>

<%@ include file="studentnavbar.jsp" %>

<div class="table-container">
    <h2>Available Jobs</h2>
    <div class="background-text">Explore your next career opportunity and apply now!</div>

    <table>
        <tr>
            <th>Company Name</th>
            <th>Job Title</th>
            <th>Job Type</th>
            <th>Job Role</th>
            <th>Job Salary</th>
            <th>Requirements</th>
            <th>Education</th>
            <th>Deadline</th>
            <th>Apply</th>
        </tr>
        <c:forEach items="${jobslist}" var="job">
            <tr>
                <td><c:out value="${job.companyname}"></c:out></td>
                <td><c:out value="${job.title}"></c:out></td>
                <td><c:out value="${job.jobType}"></c:out></td>
                <td><c:out value="${job.role}"></c:out></td>
                <td><c:out value="${job.salary}"></c:out></td>
                <td><c:out value="${job.requirements}"></c:out></td>
                <td><c:out value="${job.educationQualifications}"></c:out></td>
                <td><c:out value="${job.deadline}"></c:out></td>
                <td>
                    <a href="<c:url value='applyjob?companymail=${job.email}&jobid=${job.jobId}&companyname=${job.companyname}'/>" 
                       onclick="showPopup()">Apply Job</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <c:if test="${empty jobslist}">
        <div class="no-records">No jobs available at the moment.</div>
    </c:if>
</div>

</body>
</html>