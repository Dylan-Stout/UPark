package com.upark.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LotDetailsController {
	
	@GetMapping("/lotDetails")
    public String greeting( Model model) {
       
        return "lot-details";
    }

}
