package com.rentalcarsystem.service;

import java.util.List;

import com.rentalcarsystem.domain.Rent;



public interface RentService {
	public boolean save(Rent rent);
	
	public List<Rent> getAll();
	
	public Rent findById(Integer id);
	
	public boolean delete(Rent customer);
	
	public Rent edit(Rent customer);
}
