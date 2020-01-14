package com.ssi;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {

	@Autowired
	private StudentService service;

	@RequestMapping("studentlist")
	public ModelAndView showAllStudents(){
		List<Student> students=service.findAllStudents();
		ModelAndView mv=new ModelAndView("studentlist");
		mv.addObject("slist", students);
		return mv;
	}
	
	
	@RequestMapping("searchstudent")
	public ModelAndView searchData(@RequestParam("rno") int id){
		Student student=service.getStudent(id);
		ModelAndView mv=new ModelAndView("searchresult");
		mv.addObject("student", student); //request-scope
		return mv;
	}
	
	@RequestMapping("searchform")
	public String showSearchForm(){
		return "search";
	}
	
	@RequestMapping("studententry")
	public String showRegistrationForm(){
		return "studententry";
	}
	
	@RequestMapping("savestudent")
	public String saveStudentData(@ModelAttribute("student") Student student){
		
		service.createStudent(student);
		return "success";
	}
}
