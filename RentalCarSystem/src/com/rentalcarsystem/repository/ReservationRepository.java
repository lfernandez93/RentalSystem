package com.rentalcarsystem.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.rentalcarsystem.domain.Reservation;

@Repository
public interface ReservationRepository extends CrudRepository<Reservation, Integer>{
	@Query("SELECT re FROM RESERVATION re")
	public List<Reservation> getAllReservations();
	
	@Query("SELECT re FROM RESERVATION re where re.reservationId = :id")
	public Reservation getReservationById(@Param("id")int id);
	
}
