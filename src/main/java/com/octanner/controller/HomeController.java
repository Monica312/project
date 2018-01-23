package com.octanner.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.octanner.dao.EmployeeDAO;
import com.octanner.model.Employee;

@Controller
public class HomeController {

	@Autowired
	private EmployeeDAO employeDao;

	@RequestMapping("/")
	public String displayHomePage(Model model){
		Employee employee = new Employee();
		model.addAttribute("empobject", employee);
		return "index";
	}
	
	@RequestMapping("/sendSignupRequest")
	
	public String signUpToDB(@ModelAttribute("empobject")Employee emp, @RequestParam("cnfpwd")String cnfpwd,Model model){
		String msg=null;
		if(emp.getPassword().equals(cnfpwd)){
			
			if(employeDao.addEmployee(emp))			
				msg="Successfully Signedup";
			else
				msg="Signup process failed..";
		}
		else{
			msg="Password mismatch";
		}
		Employee employee = new Employee();
		model.addAttribute("empobject", employee);
		model.addAttribute("message", msg);
		return "index";
	}
	
	@RequestMapping("/sendLoginRequest")
	public String loginCheck(@ModelAttribute("empobject")Employee emp,Model model){
		Employee loginEmp = employeDao.authenticatEmployee(emp);
		
		if(loginEmp!=null ){
			if(loginEmp.getRole().equals("admin")){
			
				return "adminhomepage";}
			
		
			// login success
			
			else 
			{model.addAttribute("empobject", loginEmp);
			return "userhomepage";}}
		
		else{ // login fail
			Employee employee = new Employee();
			model.addAttribute("empobject", employee);
			model.addAttribute("message", "Login Failed...");
			return "index";
		}
		
	}
	
	
	@RequestMapping("/reqSendUpdatedUser")
	public String editEmployee(@ModelAttribute("empobject")Employee emp,Model model){
		String msg="";
		if(employeDao.editEmployee(emp)){
			msg="Profile edited successfully...";
		}
		else{
			msg="Editing profile failed...";
		}
		model.addAttribute("emp", emp);
		model.addAttribute("message", msg);
		return "userhomepage";
	}
	@RequestMapping("/reqSendAllEmployee")
	public String addEmployee(@ModelAttribute("empobject")Employee emp,HttpSession hsession,Model m){
		String empmessage = "Employee added successfully..";
		m.addAttribute("emp", emp);
		m.addAttribute("empmessage",empmessage);
		List<Employee> allemployees =employeDao .getEmployees();	
		m.addAttribute("allemployees", allemployees);
		return "adminhomepage";	
	}

	
	
	
}
