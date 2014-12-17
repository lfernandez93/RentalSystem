package com.rentalcarsystem.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.rentalcarsystem.domain.Customer;
import com.rentalcarsystem.domain.Reservation;

public interface ReservationRepository extends CrudRepository<Reservation, Integer>{
	//@Query("SELECT re FROM RESERVATION re")
	//public List<Reservation> getAllReservations();
}
