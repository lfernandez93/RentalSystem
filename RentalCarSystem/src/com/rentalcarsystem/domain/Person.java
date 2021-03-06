package com.rentalcarsystem.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.beans.factory.annotation.Autowired;

@Entity
@Table
public class Person {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int personId;
	@NotEmpty(message = "{NotEmpty.person.firstName.validation}")
	private String firstName;
	@NotEmpty(message = "{NotEmpty.person.lastName.validation}")
	private String lastName;
	@NotEmpty(message = "{NotEmpty.person.address.validation}")
	private String address;
	@Pattern(regexp = "\\d{1}-\\d{3}-\\d{4}", message = "{Pattern.person.phonenumber.validation}")
	private String phoneNumber;
	@NotEmpty(message = "{NotEmpty.person.nationality.validation}")
	private String nationality;
	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	

}
