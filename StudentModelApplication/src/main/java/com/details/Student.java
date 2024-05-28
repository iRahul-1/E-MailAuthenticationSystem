package com.details;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Component("s")
@Scope("prototype")

public class Student {
   private int id;
   private String name;
   private int marks;
   private String result ="fail";
   
}
