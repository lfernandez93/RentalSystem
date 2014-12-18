package com.rentalcarsystem.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rentalcarsystem.domain.Customer;
import com.rentalcarsystem.service.CustomerService;

@Controller()
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	CustomerService customerService;
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String showAddCustomer(@ModelAttribute(value = "newCustomer") Customer customer){
		return "addCustomer";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addCustomer(@ModelAttribute(value = "newCustomer") @Valid Customer customer,BindingResult result){
		if(result.hasErrors()){
			return "addCustomer";
		}
		return "";
	}
	
	@RequestMapping(value = "/get" ,method = RequestMethod.POST)
	public @ResponseBody Customer getCustomer(@RequestParam("driverLicenseNumber") String driverLicenseNumber){
		return customerService.findByDriverLicense(driverLicenseNumber);
	}
	
	@RequestMapping(value = "/delete" ,method = RequestMethod.POST)
	public void deleteCustomer(@RequestParam("customerId") String driverLicenseNumber){
		Customer customer = customerService.findByDriverLicense(driverLicenseNumber);
		customerService.delete(customer);
	}
	
	@RequestMapping(value = "/edit" ,method = RequestMethod.POST)
	public @ResponseBody Customer editCustomer(@ModelAttribute(value = "newCustomer") @Valid Customer customer,BindingResult result){
		if(result.hasErrors()){
			return null;
		}
		customerService.edit(customer);
		return customer;
	}
	
	@RequestMapping(value = "/all" , method = RequestMethod.GET)
	public @ResponseBody List<Customer> listCustomers(){
		return customerService.getAll();
	}
}
