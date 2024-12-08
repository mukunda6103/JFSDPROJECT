<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All jobs</title>
<link type="text/css" rel="stylesheet" href="css/companyviewall.css">
</head>
<body>

<%@ include file="companynavbar.jsp" %>


<table border="5px">
	<tr>
		<th>job id</th>
		<th>job title</th>
		<th>job type</th>
		<th>job role</th>
		<th>job salary</th>
		<th>job requirements</th>
		<th>education Qualifications</th>
		<th>dead line</th>
	</tr>
	<c:forEach items="${jobslist}" var="job">
		<tr>
			<td><c:out value="${job.jobId}" ></c:out></td>
			<td><c:out value="${job.title}" ></c:out></td>
			<td><c:out value="${job.jobType}" ></c:out></td>
			<td><c:out value="${job.role}" ></c:out></td>
			<td><c:out value="${job.salary}" ></c:out></td>
			<td><c:out value="${job.requirements}" ></c:out></td>
			<td><c:out value="${job.educationQualifications}" ></c:out></td>
			<td><c:out value="${job.deadline}"></c:out></td>
		</tr>
	</c:forEach>
</table>

</body>
</html>