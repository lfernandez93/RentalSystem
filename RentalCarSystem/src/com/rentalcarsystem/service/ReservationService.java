package com.rentalcarsystem.service;

import java.util.List;

import com.rentalcarsystem.domain.Reservation;

public interface ReservationService {

	public boolean addReservation(Reservation reservation);
	
	public List<Reservation> getAll();
	
	public Reservation findById(Integer id);
	
	public boolean delete(Reservation reservation);
	
	public void update(Reservation reservation);
	
}
