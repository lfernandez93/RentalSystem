package com.rentalcarsystem.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.rentalcarsystem.domain.Customer;
import com.rentalcarsystem.domain.Rent;

public interface RentRepository extends CrudRepository<Rent, Integer>{
	//@Query("SELECT r FROM RENT r")
	//public List<Rent> getAllRents();
}
