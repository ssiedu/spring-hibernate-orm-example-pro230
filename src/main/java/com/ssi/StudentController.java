package com.ssi;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController {

	@Autowired
	private SessionFactory sessionFactory;
	
	@RequestMapping("newstudent")
	public String showRegistrationForm(){
		return "studententry";
	}
	
	@RequestMapping("savestudent")
	public String saveStudentData(@ModelAttribute("student") Student student){
		System.out.println(student);
		Session session=sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		session.save(student);
		tr.commit();
		session.close();
		return "success";
	}
}
