package com.springMVC.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springMVC.Repository.EmployeeRepository;
import com.springMVC.pojo.Employee;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployeeRepository empRepository;

	public void addEmployee(String name, String email, long contact, String designation, double salary) {
		empRepository.addEmployee(name,email,contact,designation,salary);
		
	}

	public Employee searchEmployee(int id) {
		Employee emp = empRepository.searchEmployee(id);
		return emp;
	}

}
