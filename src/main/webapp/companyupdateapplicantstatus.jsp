<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    c<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Applicant's status</title>
<link type="text/css" rel="stylesheet" href="css/companyviewall.css">

</head>
<body>
	<%@include file="companynavbar.jsp" %>
	
	
	
	<table border="3px" align="center">
		<tr>
			<th>ApplicantId</th>
			<th>Job Seeker email</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${applicants}" var="app">
			<tr>
				<td><c:out value="${app.applicantId}"></c:out> </td>
				<td><c:out value="${app.jobSeekerEmail}"></c:out> </td>
				
				<td>
       
    <a href='<c:url value="updatestatus?status=Accepted&jobid=${app.jobId}&applicantid=${app.applicantId}"></c:url>'
                       class="action-button accept">Accept</a>
                    <a href='<c:url value="updatestatus?status=Rejected&jobid=${app.jobId}&applicantid=${app.applicantId}"></c:url>'
                       class="action-button reject">Reject</a>
           </td>
			</tr>
		</c:forEach>
	</table>
		
</body>
</html>