package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.details.Student;
import com.studentdata.StudentDataSave;

@Component("ser")
public class StudentService {
	@Autowired
	StudentDataSave save;
	
	public void addStudentResult(Student a) {
		if(a.getMarks()>60) {
			a.setResult("Pass");
		}else {a.setResult("Fail");}
		save.addStudentData(a);
	}
	
	
}
