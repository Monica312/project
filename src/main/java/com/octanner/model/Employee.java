package com.octanner.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Employee {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id;
private String name;
private String email;
private String password;
@Transient
private String cpass;
private String phone_no;
private String address;

private String company;
private String designation;
private String role;
@Transient
private MultipartFile profilePic;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getPhone_no() {
	return phone_no;
}
public void setPhone_no(String phone_no) {
	this.phone_no = phone_no;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getCompany() {
	return company;
}
public void setCompany(String company) {
	this.company = company;
}
public String getDesignation() {
	return designation;
}
public void setDesignation(String designation) {
	this.designation = designation;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
public String getCpass() {
	return cpass;
}
public void setCpass(String cpass) {
	this.cpass = cpass;
}
public MultipartFile getProfilePic() {
	return profilePic;
}
public void setProfilePic(MultipartFile profilePic) {
	this.profilePic = profilePic;
}


	
	
}
	/*create table employee(
			id INT PRIMARY KEY,
			name VARCHAR(100) NOT NULL,
			email VARCHAR(100) NOT NULL,
			password VARCHAR(100) NOT NULL,
			phone_no VARCHAR(100) ,
			address VARCHAR(200) ,
			company VARCHAR(100),
			designation VARCHAR(100),
			role VARCHAR(100))

}*/
