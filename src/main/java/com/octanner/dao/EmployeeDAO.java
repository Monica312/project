package com.octanner.dao;

import java.util.List;

import com.octanner.model.Employee;

public interface EmployeeDAO {
public abstract boolean addEmployee(Employee emp);
public abstract boolean editEmployee(Employee emp);
public abstract Employee getEmployeeById(String eid);
public abstract List<Employee> getEmployees();
public abstract Employee authenticatEmployee(Employee emp);
}
