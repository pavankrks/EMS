<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles/header.css" />
    <link rel="stylesheet" href="styles/footer.css" />
<style>
.table th, .table td {
	text-align: center;
}

th{

background-color:#3f72af;
color:white;
}
</style>
</head>
<body style="margin:78px 78px; background-color:#F9F7F7;">
<header>
      <div class="outer-div">
        <div class="inner-div">
          <a href="EmployeeServlet?action=none"><img src="images/home-icon.png" alt="" /></a>
        </div>
        <div class="inner-div project-name">EMS</div>

        <div class="inner-div log-in-out">
          <a href="EmployeeServlet?action=adminLogout"><img src="images/log-out-icon.png" alt="" /></a>
        </div>
      </div>
    </header>
    
    <div class="container mt-4">
        <p class="text-center">
            <a href="add_employee.jsp" class="btn btn-primary" >Add Employee</a>
        </p>
    </div>
    
    <div class="container mt-4">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Department</th>
                    <th>Salary</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${employeeList}" var="employee">
                    <tr>
                        <td>${employee.id}</td>
                        <td>${employee.name}</td>
                        <td>${employee.email}</td>
                        <td>${employee.department}</td>
                        <td>${employee.salary}</td>
                        <td><a
                            href="EmployeeServlet?action=editEmployee&id=${employee.id}"
                            class="btn btn-warning">Update</a> <a
                            href="EmployeeServlet?action=deleteEmployee&id=${employee.id}"
                            class="btn btn-danger">Delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    
    <footer>
      <div class="outer-div">
        <div class="social-div">
          <a href=""><img src="images/email-icon.png" alt="" /></a>
          <a href="https://www.linkedin.com/in/kothapalli-pavan-kumar-reddy-b0a012249/"><img src="images/linkedin-icon.png" alt="" /></a>
          <a href=""><img src="images/instagram-icon.png" alt="" /></a>
        </div>

        <div class="copyright-details">
          &copy; Copyright Pavan Kothapalli || 2023-10-20
        </div>
      </div>
    </footer>
</body>
</html>
