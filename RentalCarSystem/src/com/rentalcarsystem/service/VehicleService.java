package com.rentalcarsystem.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.rentalcarsystem.domain.Vehicle;

public interface VehicleService {
	
	public boolean save(Vehicle vehicle);
	
	public List<Vehicle> getAll();
	
	public Vehicle findById(Integer id);
	
	public boolean delete(Vehicle vehicle);
	
	public Vehicle edit(Vehicle vehicle);
	
	public Vehicle getVehicleById(String vehicleId);
	
	public List<Vehicle> getVehiclesByBrand(String vehicleBrand);
	
	//Set<Vehicle> getVehicleByFilter(Map<String, List<String>> filterParams);

}
