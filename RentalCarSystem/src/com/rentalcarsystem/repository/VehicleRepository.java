package com.rentalcarsystem.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.rentalcarsystem.domain.Vehicle;

@Repository
public interface VehicleRepository extends CrudRepository<Vehicle, Integer>{
	
	@Query("SELECT v FROM Vehicle v")
	public List<Vehicle> getAllVehicles();
	
	@Query("SELECT v FROM Vehicle v WHERE VEHICLEID =:vehicleId")
	public Vehicle getVehicleById(@Param("vehicleId") String key);
	
	
	@Query( "SELECT v FROM Vehicle v WHERE BRAND =:brand" )
	public List<Vehicle> getVehicleByBrand(@Param("brand") String key);

//	@Query( "SELECT v from Vehicle v where v.model in :brand" )
//	Set<Vehicle> getProductsByFilter(@Param("brand") List<String> filterParams);
}
