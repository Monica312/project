package com.octanner.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.octanner.model.Employee;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	public boolean addEmployee(Employee emp) {
		boolean result=false;
		
		try{
			Session ses = sessionFactory.openSession();
			Transaction tr=ses.beginTransaction();
			emp.setRole("Employee");
			ses.save(emp);
			tr.commit();
			ses.close();
			result=true;
		}
		catch(Exception ex){
			System.out.println(ex);
			result=false;
		}	
		return result;	
	}

	public boolean editEmployee(Employee emp) {
		boolean result=false;
		try{
			Session ses = sessionFactory.openSession();
			Transaction tr=ses.beginTransaction();			
			ses.update(emp);
			tr.commit();
			ses.close();		
			result=true;
		}
		catch(Exception ex){
			System.out.println(ex);
			result=false;
		}	
		return result;	
	
	}

	public Employee getEmployeeById(String eid) {
		// TODO Auto-generated method stub
		Session ses = sessionFactory.openSession();
		Employee temp = (Employee)ses.get(Employee.class,eid);
		ses.close();
		return temp;

		
	}

	public List<Employee> getEmployees() {
		// TODO Auto-generated method stub
		Session ses = sessionFactory.openSession();
		Query qr = ses.createQuery("from Employee");
		List<Employee> data = qr.list();
		ses.close();		
		return data;
	
	
	}

	public Employee authenticatEmployee(Employee emp) {
		
		Session ses = sessionFactory.openSession();
		Query qry = ses.createQuery("from Employee where email=? and password=?");
	
		qry.setParameter(0,emp.getEmail());
		qry.setParameter(1, emp.getPassword());
		Employee result=null;
		result = (Employee)qry.uniqueResult();
		ses.close();
		return result;}
		
		
			
	
	public void deleteEmployee(String eid) {
		Session ses = sessionFactory.openSession();
		
		Employee temp=(Employee)ses.get(Employee.class, eid);
		ses.delete(temp); // executes delete query in table
		ses.flush();
		ses.close();
	}

	public void updateEmployee(Employee eid) {
		Session ses = sessionFactory.openSession();
		ses.update(eid);
		ses.flush();
		ses.close();
	}


}
