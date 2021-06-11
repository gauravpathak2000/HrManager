package com.nagarro.HRManager.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.HRManager.model.Employee;

@Controller
public class UploadController {

	@Autowired
	private APICall api;
	
	@RequestMapping("/apiAddEmployee")
	public ModelAndView addEmployee(@ModelAttribute Employee e) throws IOException {
		boolean b = api.addEmployee(e);
		ModelAndView mv = new ModelAndView("AddEmployee");
		if(b)
			mv.addObject("userinfo","Success");
		else
			mv.addObject("userinfo","Something went wrong");
		return mv;
	}
	
	@RequestMapping("/apiEditEmployee")
	public ModelAndView editEmployee(@ModelAttribute Employee e) throws IOException {
		boolean b = api.editEmployee(e);
		ModelAndView mv = new ModelAndView("EditEmployee");
		if(b)
			mv.addObject("userinfo","Success");
		else
			mv.addObject("userinfo","Something went wrong");
		return mv;
	}
}
