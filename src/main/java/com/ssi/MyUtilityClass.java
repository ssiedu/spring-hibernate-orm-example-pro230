package com.ssi;

import org.springframework.stereotype.Component;


@Component
public class MyUtilityClass {
	
	public java.sql.Date convert(java.util.Date date){
		return new java.sql.Date(date.getTime());
	}
	
}
