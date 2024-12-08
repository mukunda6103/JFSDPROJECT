<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Add Job</title>
    <link rel="stylesheet" type="text/css" href="/css/addajob.css">
   
</head>
<body>
    <%@ include file="companynavbar.jsp" %>

    <div class="navbar-space"></div>

    <div class="form-container">
        <form:form id="jobForm" modelAttribute="job" method="post" action="insertjob">

            <div class="form-group">
                <label for="companyname">Company name</label>
                <form:input path="companyname" id="companyname" value="<%=c.getName() %>" readonly="true" class="form-control" />
            </div>

            <div class="form-group">
                <label for="email">Company Mail</label>
                <form:input path="email" id="email" value="<%=c.getEmail() %>" readonly="true" class="form-control" />
            </div>

            <div class="form-group">
                <label for="title">Enter Title</label>
                <form:input path="title" id="title" required="required" class="form-control" />
            </div>

            <div class="form-group">
                <label for="educationQualifications">Required Qualifications</label>
                <form:input path="educationQualifications" id="educationQualifications" required="required" class="form-control" />
            </div>

            <div class="form-group">
                <label for="role">Enter Role</label>
                <form:input path="role" id="role" required="required" class="form-control" />
            </div>

            <div class="form-group">
                <label for="location">Enter Location</label>
                <form:input path="location" id="location" required="required" class="form-control" />
            </div>

            <div class="form-group">
                <label for="jobType">Enter Job Type</label>
                <form:input path="jobType" id="jobType" required="required" class="form-control" />
            </div>

            <div class="form-group">
                <label for="requirements">Enter Requirements</label>
                <form:input path="requirements" id="requirements" required="required" class="form-control" />
            </div>

            <div class="form-group">
                <label for="salary">Enter Salary</label>
                <form:input path="salary" id="salary" required="required" class="form-control" />
            </div>

            <div class="form-group">
                <label for="deadline">Enter Deadline</label>
                <form:input path="deadline" id="deadline" required="required" class="form-control" />
            </div>

            <div class="form-group">
                <label for="description">Enter Description</label>
                <form:input path="description" id="description" required="required" class="form-control" />
            </div>

            <div class="form-group">
                <label for="employmentType">Enter Employment Type</label>
                <form:input path="employmentType" id="employmentTypeInput" required="required" class="form-control" />
            </div>

            <div class="form-group" id="otherEmploymentType" style="display: none;">
                <label for="otherEmploymentTypeInput">Specify Employment Type</label>
                <input type="text" id="otherEmploymentTypeInput" class="form-control" placeholder="Please specify if 'Other'" />
            </div>

            <div class="form-group">
                <label for="experience">Enter Experience Required</label>
                <form:input path="experience" id="experience" required="required" class="form-control" />
            </div>

            <div class="form-actions">
                <input type="submit" value="Add Job" class="btn btn-primary" />
                <input type="reset" value="Clear Form" class="btn btn-secondary" />
            </div>
        </form:form>
    </div>
     <script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function () {
            const employmentTypeInput = document.getElementById("employmentTypeInput");
            const otherEmploymentTypeDiv = document.getElementById("otherEmploymentType");
            const otherEmploymentTypeInput = document.getElementById("otherEmploymentTypeInput");

            // Dynamic behavior to show/hide "Other" employment type input
            employmentTypeInput.addEventListener('input', function () {
                if (employmentTypeInput.value.toLowerCase() === "other") {
                    otherEmploymentTypeDiv.style.display = "block";
                } else {
                    otherEmploymentTypeDiv.style.display = "none";
                }
            });

           
            document.getElementById("jobForm").addEventListener('submit', function (event) {
                let isValid = true;
                const inputs = document.querySelectorAll('input[required], textarea[required]');
                inputs.forEach(input => {
                    if (!input.value.trim()) {
                        input.classList.add("error");
                        isValid = false;
                    } else {
                        input.classList.remove("error");
                    }
                });
                if (!isValid) {
                    event.preventDefault();
                    alert("Please fill in all required fields.");
                }
            });
        });
    </script>
    
</body>
</html>
