<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* Reset and base styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
            padding-top: 80px; /* To ensure content is below the navbar */
        }

        /* Navbar Styling */
        nav {
            width: 100%;
            background-color: #34495e;
            padding: 1rem;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
        }

        nav ul {
            list-style: none;
            display: flex;
            justify-content: center;
        }

        nav ul li {
            margin: 0 20px;
        }

        nav ul li a {
            color: #ecf0f1;
            text-decoration: none;
            font-size: 1rem;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        nav ul li a:hover {
            color: #1abc9c;
        }

        /* Form Container Styling */
        .form-container {
            background-color: #fff;
            padding: 2.5rem;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            width: 90%;
            margin-top: 2rem;
            text-align: center;
            animation: fadeIn 0.8s ease;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h1 {
            margin-bottom: 1.5rem;
            color: #333;
            font-size: 1.8rem;
            font-weight: bold;
        }

        /* Input and Label Styling */
        label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: bold;
            color: #666;
            font-size: 0.9rem;
            text-align: left;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"],
        input[type="password"],
        input[type="number"],
        select {
            width: 100%;
            padding: 0.75rem;
            margin-bottom: 1.2rem;
            border-radius: 6px;
            border: 1px solid #ddd;
            outline: none;
            font-size: 1rem;
            transition: border-color 0.3s ease;
        }

        input:focus, select:focus {
            border-color: #6a11cb;
            box-shadow: 0 0 6px rgba(106, 17, 203, 0.2);
        }

        select {
            appearance: none;
            background-color: #f5f5f5;
        }

        /* Submit and Reset Button Styling */
        .form-container input[type="submit"],
        .form-container input[type="reset"] {
            width: 48%;
            padding: 0.75rem;
            font-size: 1rem;
            font-weight: bold;
            color: #fff;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 1rem;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        input[type="submit"] {
            background-color: #6a11cb;
            margin-right: 2%;
        }

        input[type="reset"] {
            background-color: #e74c3c;
        }

        input[type="submit"]:hover {
            background-color: #5a0fa9;
        }

        input[type="reset"]:hover {
            background-color: #c0392b;
        }

        /* Responsive Styling */
        @media (max-width: 600px) {
            .form-container {
                padding: 1.5rem;
            }
        }
    </style>
</head>
<body>

<!-- Navbar -->
<%@ include file="mainnavbar.jsp" %>

<!-- Form Content -->
<div class="form-container">
    <h1>Student Registration</h1>
    <form action="insertstudent" method="post">
        <label for="regnum">Enter Registration Number</label>
        <input type="number" min="2200030000" max="22000040000" id="regnum" name="regnum" required />

        <label for="sname">Enter Name</label>
        <input type="text" id="sname" name="sname" required />

        <label for="gender">Select Gender</label>
        <select id="gender" name="gender" required>
            <option value="">---</option>
            <option value="male">MALE</option>
            <option value="female">FEMALE</option>
        </select>

        <label for="dob">Enter Date Of Birth</label>
        <input type="date" id="dob" name="dob" required />

        <label for="semail">Enter Email</label>
        <input type="email" id="semail" name="semail" required />

        <label for="scontact">Enter Contact</label>
        <input type="text" id="scontact" name="scontact" required />

        <label for="pwd">Enter Password</label>
        <input type="password" id="pwd" name="pwd" required />

        <label for="dept">Select Department</label>
        <select id="dept" name="dept" required>
            <option value="">---</option>
            <option value="COMPUTER SCIENCE AND ENGINEERING">COMPUTER SCIENCE AND ENGINEERING</option>
            <option value="ELECTRICAL ENGINEERING">ELECTRICAL ENGINEERING</option>
            <option value="MECHANICAL ENGINEERING">MECHANICAL ENGINEERING</option>
            <option value="BUSINESS ADMINISTRATION">BUSINESS ADMINISTRATION</option>
        </select>

        <input type="submit" value="Register" />
        <input type="reset" value="Clear" />
    </form>
</div>

</body>
</html>
