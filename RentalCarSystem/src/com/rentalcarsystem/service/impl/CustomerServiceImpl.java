package com.rentalcarsystem.service.impl;

import java.util.List;

import com.rentalcarsystem.service.CustomerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rentalcarsystem.domain.Customer;
import com.rentalcarsystem.repository.CustomerRepository;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	CustomerRepository customerRepo;
	@Override
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public boolean save(Customer customer) {
		// TODO Auto-generated method stub
		try {
			customerRepo.save(customer);
		}catch(Exception e){
			return false;
		}
		return true;
	}

	@Override
	public List<Customer> getAll() {
		// TODO Auto-generated method stub
		return customerRepo.getAllCustomers();
	}

	@Override
	public Customer findById(Integer id) {
		// TODO Auto-generated method stub
		Customer customer = customerRepo.findOne(id);
		return customer;
	}

	@Override
	public boolean delete(Customer customer) {
		// TODO Auto-generated method stub
		try {
			customerRepo.delete(customer);
		}catch(Exception e){
			return false;
		}
		return true;
	}

	@Override
	public Customer edit(Customer customer) {
		// TODO Auto-generated method stub
		return customerRepo.save(customer);
	}

	@Override
	public Customer findByDriverLicense(String driverLicenseNumber) {
		// TODO Auto-generated method stub
		return customerRepo.getCustomerByDriverLicenseNumber(driverLicenseNumber);
	}
	
}
