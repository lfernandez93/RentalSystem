package com.rentalcarsystem.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rentalcarsystem.domain.Reservation;
import com.rentalcarsystem.repository.ReservationRepository;
import com.rentalcarsystem.service.ReservationService;

@Service
@Transactional
public class ReservationServiceImpl implements ReservationService {
	@Autowired
	ReservationRepository reservationRepository;
	
	public boolean addReservation(Reservation reservation ){
		try {
			reservationRepository.save(reservation);
		} catch(Exception e) {
			return false;
		}
		return true;
	}
	
	public boolean delete(Reservation reservation) {
		try {
			reservationRepository.delete(reservation);
		} catch(Exception e) {
			return false;
		}
		return true;
	}
	
	public List<Reservation> getAll() {
		return reservationRepository.getAllReservations();
	}
	
	public Reservation findById(Integer id) {
		return reservationRepository.getReservationById(id);
	}
	
	
	public void update(Reservation reservation) {
		reservationRepository.save(reservation);
	}

}
