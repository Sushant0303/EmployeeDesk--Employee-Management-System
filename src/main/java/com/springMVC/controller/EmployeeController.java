package com.springMVC.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springMVC.pojo.Employee;
import com.springMVC.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService empService;
	
	
	@GetMapping("/home")
	public String home() {
		return "Home";
	}
	
	@GetMapping("/add")
	public String add() {
		return "Add";
	}
	
	@GetMapping("/update")
	public String update() {
		return "Update";
	}

	@GetMapping("/remove")
	public String remove() {
		return "Remove";
	}

	@GetMapping("/search")
	public String search() {
		return "Search";
	}
	
//	@PostMapping("/add")
//	public String addData(@RequestParam("name") String name,
//			@RequestParam("email") String email,
//			@RequestParam("contact") long contact,
//			@RequestParam("designation") String designation,
//			@RequestParam("salary") double salary) {
//		
//		empService.addEmployee(name,email,contact,designation,salary);
//		
//		
//		return "Add";
//	}
	
	@PostMapping("/add")
	public String addData(@RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("contact") long contact,
			@RequestParam("designation") String designation,
			@RequestParam("salary") double salary,
			 ModelMap map) {
		
		empService.addEmployee(name,email,contact,designation,salary);
		
		map.addAttribute("msg" , "Employee Added Successfully");
//		 // Store message temporarily (only for redirect)
//	    redirectAttributes.addFlashAttribute("msg", "Employee added successfully!");
//
//	    // Redirect to avoid re-submission and re-alert on reload
//	    return "redirect:/add";
		
		return "Add";
	
		
		
		
	}
	
	@PostMapping("/search")
	public String searchData(@RequestParam("id") int id,
			ModelMap map) {
		Employee emp = empService.searchEmployee(id);
		if(emp != null) {
			map.addAttribute("msg", "Record Found");
			map.addAttribute("emp", emp);
			return "Search";
		}
		map.addAttribute("msg", "Record Not Found!!");
		return "Search";
	}
	


	

}
