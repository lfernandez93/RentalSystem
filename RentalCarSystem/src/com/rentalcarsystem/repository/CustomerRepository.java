package com.rentalcarsystem.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.rentalcarsystem.domain.Customer;
@Repository
public interface CustomerRepository extends CrudRepository<Customer, Integer>{
	
	//@Query("SELECT c FROM CUSTOMER c")
	//public List<Customer> getAllCustomers();
}
