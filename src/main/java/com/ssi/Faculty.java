package com.ssi;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Faculty {
	@Id
	private String fcode;
	private String fname;
	private String qualification;
	private String subject;
	
	public Faculty() {
		super();
	}
	public Faculty(String fcode, String fname, String qualification,
			String subject) {
		super();
		this.fcode = fcode;
		this.fname = fname;
		this.qualification = qualification;
		this.subject = subject;
	}
	public String getFcode() {
		return fcode;
	}
	public void setFcode(String fcode) {
		this.fcode = fcode;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
}
