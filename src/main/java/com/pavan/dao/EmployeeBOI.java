package com.pavan.dao;

import java.util.List;

import com.pavan.models.Employee;

public interface EmployeeBOI {

	public Employee getEmployee(int id);
	
	public List<Employee> getAllEmployees();
	
	public void addEmployee(Employee emp);
	
	public void updateEmployee(Employee emp);
	
	public void deleteEmployee(Employee emp);
	
	public void deleteEmployee(int id);
	
}
