package com.rentalcarsystem.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.rentalcarsystem.domain.Customer;
import com.rentalcarsystem.domain.Vehicle;

public interface VehicleRepository extends CrudRepository<Vehicle, Integer>{
	//@Query("SELECT v FROM VEHICLE v")
	//public List<Vehicle> getAllVehicles();
}
