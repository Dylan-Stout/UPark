package com.upark.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
	
	 @GetMapping("/user")
	 public String getUser(Model model) {
	        model.addAttribute("name", "Dylan");
	        return "user";
	 }

}
