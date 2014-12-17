package com.rentalcarsystem.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rentalcarsystem.domain.Rent;
import com.rentalcarsystem.repository.RentRepository;

@Service
@Transactional
public class RentServiceImpl {
	@Autowired
	RentRepository rentRepository;
	
	public boolean save(Rent rent ){
		try{
			rentRepository.save(rent);
		}catch(Exception e){
			return false;
		}
		return true;
	}
}
