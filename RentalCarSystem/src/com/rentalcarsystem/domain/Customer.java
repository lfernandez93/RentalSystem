package com.rentalcarsystem.domain;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapKey;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.Fetch;
@Entity
@Table
public class Customer{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int customerId;
	@Column(name = "DriverLicenseNo")
	private String DriverLicenceNumber;
	@OneToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE},fetch=FetchType.LAZY, mappedBy="customer")
	@MapKey(name = "reservationId")
	private Map<Integer,Reservation> reservations = new HashMap<Integer, Reservation>();
	@OneToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE},fetch=FetchType.LAZY)
	@JoinColumn(name = "personId")
	private Person person;
	
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	public Map<Integer, Reservation> getReservations() {
		return reservations;
	}
	public void setReservations(Map<Integer, Reservation> reservations) {
		this.reservations = reservations;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public String getDriverLicenceNumber() {
		return DriverLicenceNumber;
	}
	public void setDriverLicenceNumber(String driverLicenceNumber) {
		DriverLicenceNumber = driverLicenceNumber;
	}

}
