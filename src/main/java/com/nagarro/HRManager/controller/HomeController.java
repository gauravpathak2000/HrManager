package com.nagarro.HRManager.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.HRManager.model.Employee;


import org.supercsv.io.CsvBeanWriter;
import org.supercsv.io.ICsvBeanWriter;
import org.supercsv.prefs.CsvPreference;

@Controller
public class HomeController 
{
	@Autowired
	private APICall api;
	
	@RequestMapping("/")
	public ModelAndView home() throws Exception
	{
		ModelAndView mv = new ModelAndView("home");
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String currentPrincipalName = authentication.getName();
		mv.addObject("username", currentPrincipalName);
		mv.addObject("employees", api.fetchAllEmployees());
		return mv;
	}
	
	@RequestMapping("/login")
	public String loginPage()
	{
		return "login";
	}
	
	@RequestMapping("/editEmployee")
	public ModelAndView editEmployee(@RequestParam int empCode) throws Exception {
		Employee e = api.fetchEmployee(empCode);
		ModelAndView mv = new ModelAndView("EditEmployee");
		mv.addObject("employee", e);
		return mv;
	}
	
	@RequestMapping("/downloadData")
	public void downloadData(HttpServletResponse response) throws Exception
	{
		response.setContentType("text/csv");
		String fileName = "Employee.csv";
		String headerKey = "Content-Disposition";
		String headerValue = "attachment; filename=" + fileName;
		
		response.setHeader(headerKey, headerValue);
		
		List<Employee> employees = api.fetchAllEmployees();
		
		ICsvBeanWriter csvWriter = new CsvBeanWriter(response.getWriter(), CsvPreference.STANDARD_PREFERENCE);
		
		String[] csvHeader = { "Employee Code", "Name", "Location", "Email", "Date of Birth" };
		String[] nameMapping = { "empCode", "empName", "loc", "email", "dob" };
		
		csvWriter.writeHeader(csvHeader);
        
        for (Employee e : employees) {
            csvWriter.write(e, nameMapping);
        }
         
        csvWriter.close();
	}
	
	@RequestMapping("/addEmployee")
	public String addEmployee() {
		return "AddEmployee";
	}
	
	@RequestMapping("/logout-success")
	public String logoutPage()
	{
		return "login";
	}
}
