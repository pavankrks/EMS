<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee</title>
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
				<h2 class="mb-4" style="text-align: center">Update Employee</h2>

				<form action="EmployeeServlet?action=updateEmployee" method="post">
					<input type="hidden" name="id" value="${employee.id}">
					<div class="form-group">
						<label for="name">Name:</label> <input type="text"
							class="form-control" id="name" name="name"
							value="${employee.name}">
					</div>
					<div class="form-group">
						<label for="email">Email:</label> <input type="text"
							class="form-control" id="email" name="email"
							value="${employee.email}">
					</div>
					<div class="form-group">
						<label for="department">Department:</label> <select
							class="form-control" id="department" name="department">
							<option value="IT"
								${employee.department == 'IT' ? 'selected' : ''}>IT</option>
							<option value="Finance"
								${employee.department == 'Finance' ? 'selected' : ''}>Finance</option>
							<option value="Sales"
								${employee.department == 'Sales' ? 'selected' : ''}>Sales</option>
							<option value="Production"
								${employee.department == 'Production' ? 'selected' : ''}>Production</option>
							<option value="HR"
								${employee.department == 'HR' ? 'selected' : ''}>HR</option>
							<option value="Marketing"
								${employee.department == 'Marketing' ? 'selected' : ''}>Marketing</option>
						</select>
					</div>

					<div class="form-group">
						<label for="salary">Salary:</label> <input type="text"
							class="form-control" id="salary" name="salary"
							value="${employee.salary}">
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
