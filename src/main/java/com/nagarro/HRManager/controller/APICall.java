package com.nagarro.HRManager.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.nagarro.HRManager.model.Employee;

@Component
public class APICall {

	String url = "http://localhost:9090";
	@Autowired
	private RestTemplate restTemplate;

	public List<Employee> fetchAllEmployees() throws Exception {
		Employee[] e = restTemplate.getForObject(url + "/getEmployees", Employee[].class);
		return Arrays.asList(e);
	}
	
	public boolean addEmployee(Employee e) {
		Employee emp = restTemplate.postForObject(url + "/setEmployee", e, Employee.class);
		if(emp == null)
			return false;
		else
			return true;
	}
	
	public Employee fetchEmployee(int empCode) throws Exception {
		Employee e = restTemplate.getForObject(url + "/getEmployee/"+ empCode, Employee.class);
		return e;
	}

	public boolean editEmployee(Employee e) {
		Employee emp = restTemplate.postForObject(url + "/updateEmployee", e, Employee.class);
		if(emp == null)
			return false;
		else
			return true;
	}
}
