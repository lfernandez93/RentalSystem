package com.rentalcarsystem.service;

import java.util.List;

import com.rentalcarsystem.domain.Customer;

public interface CustomerService {
	
	public boolean save(Customer customer);
	
	public List<Customer> getAll();
	
	public Customer findById(Integer id);
	
	public boolean delete(Customer customer);
	
	public Customer edit(Customer customer);
}
