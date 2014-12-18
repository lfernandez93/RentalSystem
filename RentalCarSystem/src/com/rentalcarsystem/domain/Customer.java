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
import javax.validation.Valid;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.Fetch;
@Entity(name = "Customer")
@Table()
public class Customer{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int customerId;
	@Column(name = "DriverLicenseNo")
	@Size(min=10,max=10,message="{Size.customer.licensenumber.validation}")
	@Pattern(regexp="\\d*",message = "{Pattern.customer.licensenumber.validation}")
	private String driverLicenseNumber;
	@OneToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE},fetch=FetchType.EAGER)
	@MapKey(name = "reservationId")
	private Map<Integer,Reservation> reservations = new HashMap<Integer, Reservation>();
	@OneToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE},fetch=FetchType.EAGER)
	@JoinColumn(name = "personId")
	@Valid
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
	public String getDriverLicenseNumber() {
		return driverLicenseNumber;
	}
	public void setDriverLicenseNumber(String driverLicenseNumber) {
		this.driverLicenseNumber = driverLicenseNumber;
	}

}
