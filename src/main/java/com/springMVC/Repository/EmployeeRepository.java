package com.springMVC.Repository;

import org.springframework.stereotype.Repository;

import com.springMVC.pojo.Employee;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;

@Repository
public class EmployeeRepository {
	
	private static EntityManagerFactory factory;
	private static EntityManager manager;
	private static EntityTransaction transaction;
	
	public static void openConnection() {
		
		factory=Persistence.createEntityManagerFactory("springmvc");
		manager=factory.createEntityManager();
		transaction=manager.getTransaction();
	}
	
	public static void closeConnection() {
		if (factory!=null) {
			factory.close();
		}
		if (manager!=null) {
			manager.close();
		}
		if (transaction.isActive()) {
			transaction.rollback();
		}
	}

	public void addEmployee(String name, String email, long contact, String designation, double salary) {
		openConnection();
		transaction.begin();
		Employee emp = new Employee();
		emp.setName(name);
		emp.setEmail(email);
		emp.setContact(contact);
		emp.setDesignation(designation);
		emp.setSalary(salary);
		manager.persist(emp);
		System.out.println("Data Added Successfully...");
		transaction.commit();
		closeConnection();
		
		
	}

	public Employee searchEmployee(int id) {
		openConnection();
		transaction.begin();
		Employee emp = manager.find(Employee.class, id);
		System.out.println(emp);
		
		transaction.commit();
		closeConnection();
		return emp;
	}

	

}
