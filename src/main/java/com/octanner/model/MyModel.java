package com.octanner.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class MyModel {
@Id
private String employeeId;
public String getEmployeeId() {
	return employeeId;
}
public void setEmployeeId(String employeeId) {
	this.employeeId = employeeId;
}
public String getEmployeename() {
	return employeename;
}
public void setEmployeename(String employeename) {
	this.employeename = employeename;
}
private String employeename;
}
