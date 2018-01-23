package com.octanner.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
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
	public String signUpToDB(@ModelAttribute("empobject")Employee emp,Model model){
		String msg=null;
		if(emp.getPassword().equals(emp.getCpass())){
			
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
	public String editEmployee(@ModelAttribute("empobject")Employee emp,Model model,HttpServletRequest 	request){
		String msg="";
		
		
		
		if(employeDao.editEmployee(emp)){
			
			
			File file=new File(request.getRealPath("resources//images//profilepic//"));
			/*System.out.println(file.exists());*/
			if(!file.exists()){
				file.mkdirs();
			}
			File storagepath=new File(request.getRealPath("resources//images//profilepic//")+emp.getName()+".jpg");
			try{
			byte[] imagebytes=emp.getProfilePic().getBytes();
			System.out.println(imagebytes);
			BufferedOutputStream bufferedOutputStream=new BufferedOutputStream(new FileOutputStream(storagepath));
			bufferedOutputStream.write(imagebytes);
			bufferedOutputStream.close();
			}catch (Exception e) {
				// TODO: handle exception
				System.out.println(e);
			}
			
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

	
	
	@RequestMapping("/empSearch")
	public String empSearch(@RequestParam("name")String name,ModelMap model)
	{
		
		  Employee emp=employeDao.getEmployeeByName(name);
		  if(emp!=null)
		    model.addAttribute("empobject",emp )  ;
		    
		  else
		  {
			  model.addAttribute("empnameerror", "Employee is not Found");
			  model.addAttribute("empobject",new Employee())  ;
		  }
		
		return "adminhomepage";
	}
}
