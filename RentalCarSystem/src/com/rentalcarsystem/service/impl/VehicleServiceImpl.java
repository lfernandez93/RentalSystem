package com.rentalcarsystem.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rentalcarsystem.domain.Vehicle;
import com.rentalcarsystem.repository.VehicleRepository;
import com.rentalcarsystem.service.VehicleService;

@Service
@Transactional
public class VehicleServiceImpl implements VehicleService{

	@Autowired
	VehicleRepository vehicleRepository;
	
	@Override
	public boolean save(Vehicle vehicle) {
		try {
			System.out.println("serviceImpl*******save");
			vehicleRepository.save(vehicle);
		}catch(Exception e){
			return false;
		}
		return true;
	}

	@Override
	public List<Vehicle> getAll() {
		return vehicleRepository.getAllVehicles();
	}

	@Override
	public Vehicle findById(Integer id) {
		return vehicleRepository.findOne(id);	}

	@Override
	public boolean delete(Vehicle vehicle) {
		try {
			vehicleRepository.delete(vehicle);
		}catch(Exception e){
			return false;
		}
		return true;
	}

	@Override
	public Vehicle edit(Vehicle vehicle) {
		return vehicleRepository.save(vehicle);	}

	@Override
	public Vehicle getVehicleById(String vehicleId) {
		return vehicleRepository.getVehicleById(vehicleId);
	}

	@Override
	public List<Vehicle> getVehiclesByBrand(String vehicleBrand) {
		return vehicleRepository.getVehicleByBrand(vehicleBrand);
	}
}
