package com.student.app;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.config.Configuration;
import com.details.Student;
import com.service.StudentService;
import com.studentdata.StudentDataSave;

public class App 
{
    public static void main( String[] args )
    {
       @SuppressWarnings("resource")
	AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(Configuration.class);
        Student s = ctx.getBean("s",Student.class);
        s.setId(101);
        s.setName("Rahul");
        s.setMarks(65);
        StudentService ss = ctx.getBean("ser",StudentService.class);
        ss.addStudentResult(s);
        StudentDataSave sd =ctx.getBean("fu",StudentDataSave.class);
        Student s1 = ctx.getBean("s",Student.class);
        s1.setId(102);
        s1.setName("zoro");
        s1.setMarks(55);
        StudentService ss1 = ctx.getBean("ser",StudentService.class);
        ss1.addStudentResult(s1);
        StudentDataSave sd1 =ctx.getBean("fu",StudentDataSave.class);
        sd1.showDetails();


    }
}
