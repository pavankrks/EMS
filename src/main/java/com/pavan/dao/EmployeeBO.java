package com.pavan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.pavan.models.Employee;

public class EmployeeBO implements EmployeeBOI{
	
	
	private static Connection connection;
	private static Statement stat;
	private static PreparedStatement preStat;
	private static ResultSet result;
	
	
	private static String loader = "com.mysql.cj.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost:3306/employeedb";
	private static String username = "root";
	private static String password = "root";
	
	
	private static String SELECT_ONE_QUERY = "SELECT id,name,email,department,salary from employee where id = ?";
	private static String SELECT_ALL_QUERY = "SELECT * from employee";
	private static String INSERT_QUERY = "INSERT into employee (name,email,department,salary) values(?,?,?,?)";
	private static String UPDATE_QUERY = "UPDATE employee set name = ?,email = ?,department = ?,salary = ? where id = ?";
	private static String DELETE_QUERY = "DELETE from employee where id = ?";
	
	
	public EmployeeBO() {
		
		try {
			Class.forName(loader);
			connection = DriverManager.getConnection(url,username,password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}

	@Override
	public Employee getEmployee(int id) {
		
		Employee emp = null;
		try {
			
			preStat = connection.prepareStatement(SELECT_ONE_QUERY);
			preStat.setInt(1, id);
			
			result = preStat.executeQuery();
			
			while(result.next()) {
				
				String name = result.getString("name");
				String email = result.getString("email");
				String department = result.getString("department");
				int salary = result.getInt("salary");
				
				emp = new Employee(id,name,email,department,salary);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		return emp;
	}

	@Override
	public List<Employee> getAllEmployees() {
		
		List<Employee> list = new ArrayList<>();
		try {
			
			stat = connection.createStatement();
			
			String AUTO_INCREMENT = "ALTER TABLE employee AUTO_INCREMENT = 1";
			stat.executeUpdate(AUTO_INCREMENT);
			result = stat.executeQuery(SELECT_ALL_QUERY);
			
			
			while(result.next()) {
				
				int id = result.getInt("id");
				String name = result.getString("name");
				String email = result.getString("email");
				String department = result.getString("department");
				int salary = result.getInt("salary");
				
				list.add(new Employee(id,name,email,department,salary));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public void addEmployee(Employee emp) {

		try {
			preStat = connection.prepareStatement(INSERT_QUERY);
			
			
			preStat.setString(1,emp.getName());
			preStat.setString(2, emp.getEmail());
			preStat.setString(3, emp.getDepartment());
			preStat.setInt(4, emp.getSalary());
			
			preStat.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void updateEmployee(Employee emp) {

		try {
			preStat = connection.prepareStatement(UPDATE_QUERY);
			
			
			preStat.setString(1,emp.getName());
			preStat.setString(2, emp.getEmail());
			preStat.setString(3, emp.getDepartment());
			preStat.setInt(4, emp.getSalary());
			preStat.setInt(5, emp.getId());
			
			preStat.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}

	@Override
	public void deleteEmployee(Employee emp) {

		
		
	}

	@Override
	public void deleteEmployee(int id) {
		try {
			preStat = connection.prepareStatement(DELETE_QUERY);
			
			preStat.setInt(1,id);
			
			preStat.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
