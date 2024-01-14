package com.pavan.services;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pavan.dao.EmployeeBO;
import com.pavan.models.Employee;

@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");

		if ("adminLogin".equals(action)) {
			adminLogin(request, response);
		} else if ("addEmployee".equals(action)) {
			addEmployee(request, response);
		} else if ("updateEmployee".equals(action)) {
			updateEmployee(request, response);
		} else if ("deleteEmployee".equals(action)) {
			deleteEmployee(request, response);
		} else if ("editEmployee".equals(action)) {
			editEmployee(request, response);
		}
		else if("adminLogout".equals(action)){
			adminLogout(request,response);
		} else {
			EmployeeBO empDAO = new EmployeeBO();
			List<Employee> employees = empDAO.getAllEmployees();

			request.setAttribute("employeeList", employees);
			RequestDispatcher rd = request.getRequestDispatcher("display_employees.jsp");
			rd.forward(request, response);
		}
	}

	private void adminLogout(HttpServletRequest request, HttpServletResponse response) {
		PrintWriter out = null;
		 try {
			HttpSession session = request.getSession();
			    session.invalidate(); 
			    response.sendRedirect("login.jsp"); 
			    out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			out.println("Some Error Occured");
		}
		
	}

	private void adminLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		if ("pavan369@gmail.com".equalsIgnoreCase(email) && "ems@ems".equals(password)) {

			EmployeeBO empDAO = new EmployeeBO();

			List<Employee> employees = empDAO.getAllEmployees();

			request.setAttribute("employeeList", employees);
			RequestDispatcher rd = request.getRequestDispatcher("display_employees.jsp");
			rd.forward(request, response);
		}
	}
	


	private void addEmployee(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String department = request.getParameter("department");
		int salary = Integer.parseInt(request.getParameter("salary"));

		Employee emp = new Employee(name, email, department, salary);
		EmployeeBO empDAO = new EmployeeBO();

		empDAO.addEmployee(emp);

		List<Employee> employees = empDAO.getAllEmployees();

		request.setAttribute("employeeList", employees);

		RequestDispatcher rd = request.getRequestDispatcher("display_employees.jsp");
		rd.forward(request, response);
	}

	private void updateEmployee(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String department = request.getParameter("department");
		int salary = Integer.parseInt(request.getParameter("salary"));

		Employee emp = new Employee(id, name, email, department, salary);
		EmployeeBO empDAO = new EmployeeBO();

		empDAO.updateEmployee(emp);

		List<Employee> employees = empDAO.getAllEmployees();

		request.setAttribute("employeeList", employees);

		RequestDispatcher rd = request.getRequestDispatcher("display_employees.jsp");
		rd.forward(request, response);

	}

	private void deleteEmployee(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		EmployeeBO empDAO = new EmployeeBO();

		empDAO.deleteEmployee(id);

		List<Employee> employees = empDAO.getAllEmployees();

		request.setAttribute("employeeList", employees);

		RequestDispatcher rd = request.getRequestDispatcher("display_employees.jsp");
		rd.forward(request, response);
	}

	private void editEmployee(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		EmployeeBO empDAO = new EmployeeBO();
		Employee emp = empDAO.getEmployee(id);

		request.setAttribute("employee", emp);
		RequestDispatcher rd = request.getRequestDispatcher("update_employee.jsp");
		rd.forward(request, response);
	}
}
