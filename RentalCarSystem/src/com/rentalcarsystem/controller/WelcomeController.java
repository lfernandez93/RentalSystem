package com.rentalcarsystem.controller;

import com.rentalcarsystem.service.CustomerService;
import com.rentalcarsystem.service.VehicleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class WelcomeController {
	
	@Autowired
	VehicleService vehicleServ;
	@RequestMapping({"/","/welcome"})
	public String getWelcomePage(Model model){
		model.addAttribute("vehicles",vehicleServ.getAll());
		return "vehicles";
		
	}
}
