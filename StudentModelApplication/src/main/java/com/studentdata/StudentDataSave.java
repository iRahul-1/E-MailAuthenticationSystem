package com.studentdata;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

import com.details.Student;
@Component("fu")
public class StudentDataSave {
	ArrayList<Student> pass = new ArrayList<Student>();
	ArrayList<Student> fail = new ArrayList<Student>();
	public void addStudentData(Student s) {
		if("pass".equalsIgnoreCase(s.getResult())) pass.add(s);
		if("fail".equalsIgnoreCase(s.getResult())) fail.add(s);
	}
	 public void showDetails() {
			System.out.println("Pass Student: "+ pass);
			System.out.println("Fail Studetn: "+ fail);
	 }
}
