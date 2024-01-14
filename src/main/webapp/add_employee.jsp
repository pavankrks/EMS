<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="styles/header.css" />
<link rel="stylesheet" href="styles/footer.css" />

</head>
<body style="margin: 70px 70px; background-color: #F9F7F7;">
	<header>
		<div class="outer-div">
			<div class="inner-div">
				<a href="EmployeeServlet?action=none"><img
					src="images/home-icon.png" alt="" /></a>
			</div>
			<div class="inner-div project-name">EMS</div>

			<div class="inner-div log-in-out">
				<a href="EmployeeServlet?action=adminLogout"><img
					src="images/log-out-icon.png" alt="" /></a>
			</div>
		</div>
	</header>
	<div class="container">
		<div class="row justify-content-center mt-5">
			<div class="col-md-6">
				<h2 class="mb-4" style="text-align: center">Add Employee</h2>

				<form action="EmployeeServlet?action=addEmployee" method="post">
					<div class="form-group">
						<label for="name">Name:</label> <input type="text"
							class="form-control" id="name" name="name"
							placeholder="Enter the name">
					</div>
					<div class="form-group">
						<label for="email">Email:</label> <input type="text"
							class="form-control" id="email" name="email"
							placeholder="Enter the email">
					</div>

					<div class="form-group">
						<label for="department">Department:</label> <select
							class="form-control" id="department" name="department">
							<option value="IT">IT</option>
							<option value="Finance">Finance</option>
							<option value="Sales">Sales</option>
							<option value="Production">Production</option>
							<option value="HR">HR</option>
							<option value="Marketing">Marketing</option>
						</select>
					</div>
					<div class="form-group">
						<label for="salary">Salary:</label> <input type="number"
							class="form-control" id="salary" name="salary"
							placeholder="Enter the Salary">
					</div>
					<div class="text-center mt-4">
						<button type="reset" class="btn btn-secondary">Reset</button>
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</form>


			</div>
		</div>
	</div>

	<footer>
		<div class="outer-div">
			<div class="social-div">
				<a href=""><img src="images/email-icon.png" alt="" /></a> <a
					href="https://www.linkedin.com/in/kothapalli-pavan-kumar-reddy-b0a012249/"><img
					src="images/linkedin-icon.png" alt="" /></a> <a href=""><img
					src="images/instagram-icon.png" alt="" /></a>
			</div>

			<div class="copyright-details">&copy; Copyright Pavan
				Kothapalli || 2023-10-20</div>
		</div>
	</footer>
</body>
</html>
