<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Add Company</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    

       <link type="text/css" rel="stylesheet" href="css/adding.css">
    
</head>

<body>

    <!-- Include the admin navbar here -->
    <nav>
        <ul>
            <li><a href="adminhome">Home</a></li>
            <li><a href="addcompany">Add Company</a></li>
            <li><a href="viewallcompanies">View All Companies</a></li>
            <li><a href="viewallstudents">View All Students</a></li>
            <li><a href="adminlogout">Logout</a></li>
        </ul>
    </nav>

    <!-- Form Container -->
    <div class="form-container">
        <h2>Add Company</h2>
        <form:form modelAttribute="company" method="post" action="insertcompany">
            
            <label for="name">Enter Name</label>
            <form:input path="name" required="required" placeholder="Enter company name" id="name"></form:input>

            <label for="field">Enter Field</label>
            <form:input path="field" required="required" placeholder="Enter company field" id="field"></form:input>

            <label for="location">Enter Location</label>
            <form:input path="location" required="required" placeholder="Enter company location" id="location"></form:input>

            <label for="email">Enter Email ID</label>
            <form:input path="email" required="required" placeholder="Enter company email" id="email"></form:input>

            <label for="password">Enter Password</label>
            <form:input path="password" required="required" type="password" placeholder="Enter company password" id="password"></form:input>

            <div class="form-btns">
                <input type="submit" value="Add" />
                <input type="reset" value="Clear" />
            </div>
            
        </form:form>
    </div>

</body>

</html>
