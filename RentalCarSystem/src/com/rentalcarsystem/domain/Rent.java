package com.rentalcarsystem.domain;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table
public class Rent {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int rentId;
	private int totalRentDay;
	private String status;
	@OneToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE},fetch=FetchType.LAZY)
	@JoinTable(name = "reservationId")
	private Reservation reservation;
	
	
	public Reservation getReservation() {
		return reservation;
	}
	public void setReservation(Reservation reservation) {
		this.reservation = reservation;
	}
	public int getRentId() {
		return rentId;
	}
	public void setRentId(int rentId) {
		this.rentId = rentId;
	}

	public int getTotalRentDay() {
		return totalRentDay;
	}
	public void setTotalRentDay(int totalRentDay) {
		this.totalRentDay = totalRentDay;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
