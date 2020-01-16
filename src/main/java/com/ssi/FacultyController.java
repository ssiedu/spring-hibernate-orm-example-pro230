package com.ssi;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FacultyController {

	@RequestMapping("savefaculty")
	public void saveFacultyData(@ModelAttribute("faculty") Faculty faculty){
		
	}
	
	@RequestMapping("facultyentry")
	public ModelAndView showFacultyEntryForm(){
		
		//Faculty faculty=new Faculty("F111","ABCD","ME","Java");
		Faculty faculty=new Faculty();
		ModelAndView mv=new ModelAndView("facultyentry");
		mv.addObject("faculty", faculty);
		
		List<String> degrees=new ArrayList<>();
		degrees.add("M.Tech./M.E.");
		degrees.add("P.Hd.");
		degrees.add("D.Lit");
		
		mv.addObject("degreedata",degrees);
		
		List<String> subjects=new ArrayList<>();
		subjects.add("CPP");
		subjects.add("Java");
		subjects.add("Python");
		subjects.add("Linux");
		
		mv.addObject("subjectdata", subjects);
		
		
		
		return mv;
	}
	
}
