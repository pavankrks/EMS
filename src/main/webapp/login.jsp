<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Admin Login</title>
<!-- Add Bootstrap CSS link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	    <link rel="stylesheet" href="styles/header.css" />
    <link rel="stylesheet" href="styles/footer.css" />
</head>
<body style="margin:78px 78px; background-color:#F9F7F7;">
<header>
      <div class="outer-div">
        <div class="inner-div">
          <a href="login.jsp"><img src="images/home-icon.png" alt="" /></a>
        </div>
        <div class="inner-div project-name">EMS</div>

        <div class="inner-div log-in-out">
          <a href="login.jsp"><img src="images/log-in-icon.png" alt="" /></a>
        </div>
      </div>
    </header>
	<main class="container mt-4">
    <div class="text-center">
        <h1>EMPLOYEE MANAGEMENT SYSTEM</h1>
    </div>

    <div class="text-center mt-4">
        <h2>Admin Login Details</h2>
        <div class="container form-div" style="max-width: 400px;"> 
            <form action="EmployeeServlet?action=adminLogin" method="post" style="margin-top:45px;">
                <div class="form-group" style="text-align:start" >
                    <label for="email">Email</label>
                    <input type="email" required name="email" class="form-control" placeholder="Enter your email">
                </div>
                <div class="form-group" style="text-align:start" >
                    <label for="password">Password</label>
                    <input type="password" required name="password" class="form-control" placeholder="Enter your password">
                </div>
                <div class="text-center mt-4">
                    <button type="reset" class="btn btn-secondary">Reset</button>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>
</main>

	<footer>
      <div class="outer-div">
        <div class="social-div">
          <a href=""><img src="images/email-icon.png" alt="" /></a>
          <a href="https://www.linkedin.com/in/kothapalli-pavan-kumar-reddy-b0a012249/"><img src="images/linkedin-icon.png" alt="" /></a>
          <a href=""><img src="images/instagram-icon.png" alt="" /></a>
        </div>

        <div class="copyright-details">
          &copy; Copyright Pavan Kothapalli || 2023-10-19
        </div>
      </div>
    </footer>
</body>
</html>
