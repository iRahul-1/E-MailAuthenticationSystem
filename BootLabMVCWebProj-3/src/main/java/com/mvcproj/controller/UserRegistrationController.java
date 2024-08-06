package com.mvcproj.controller;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mvcproj.entity.UserRegistration;
import com.mvcproj.mail.SendEmailToUserImple;
import com.mvcproj.service.UserRegistrationServiceImple;

@Controller
public class UserRegistrationController {
	@Autowired
	private UserRegistrationServiceImple userService;
	@Autowired
	private SendEmailToUserImple sendMail;
	
	@GetMapping
	public String home() {
		return "home";
	}
	@GetMapping("/getData")
	public String getAllData(Map<String, Object> map){
	    try {
	        Iterable<UserRegistration> allData = userService.getAllData();
	        map.put("userData", allData);
	        return "report"; 
	    } catch (Exception e) {
	       
	        e.printStackTrace();
	        return "error"; 
	    }
	}
	@GetMapping("/registration")
	public String registerUser() {
		return"register";
	}
	@PostMapping("/submitRegistration")
	public String getDetails(@RequestParam("username") String username
			,@RequestParam("password") String password,@RequestParam("email") String email,
			@RequestParam("birthday") String birthday,@RequestParam("profession") String profession,
			Model model) {
		
		   UserRegistration user = new UserRegistration(username, password, email, birthday, profession);
		  String msg = userService.saveData(user);
		  System.out.println(msg);
		  model.addAttribute("username",username);
		  model.addAttribute("email",email);
		  try {
			  if(msg.equalsIgnoreCase("Data Saved")) {
			sendMail.mailUser("User Registered Successful", email);
			System.out.println("Mail sent");
			  }else {System.out.println("Registration failed");}
		} catch (Exception e) {
			e.printStackTrace();
		}
		   
		return "result";
	}
	@GetMapping("/data_edit")
	public String editProfile(@RequestParam("id") int id,Model model) {
		Optional<UserRegistration> byId = userService.getUserById(id);
		if(byId.isPresent()) {
			model.addAttribute("user",byId.get());
			return "update"; 
		}else
		 return "redirect:/home"; 
	}
	@PostMapping("/data_edit")
	public String update(@ModelAttribute("user") UserRegistration user,RedirectAttributes model) {
		String msg = userService.updateUser(user);
		System.out.println(msg);
		model.addFlashAttribute("message",msg);
		 return "redirect:./";
	}
	@GetMapping("/data_delete")
	public String deleteProfile(@RequestParam("id") int id,RedirectAttributes model) {
		String msg = userService.deleteById(id);
		if(msg.equalsIgnoreCase("deleted")) {
			model.addFlashAttribute("message","user deleted");
			return "redirect:./";
		} model.addFlashAttribute("message","user not found");
		return "redirect:./";
	}
}

