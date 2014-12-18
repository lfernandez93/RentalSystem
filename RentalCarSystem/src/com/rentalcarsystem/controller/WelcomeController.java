package com.rentalcarsystem.controller;

import com.rentalcarsystem.service.CustomerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class WelcomeController {
	
	@Autowired
	CustomerService customServ;
	@RequestMapping({"/","/welcome"})
	public String getWelcomePage(){
		return "welcome";
		
	}
}
