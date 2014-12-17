package com.rentalcarsystem.domain;

import java.util.HashMap;
import java.util.Map;

public class Administrator {
	private String userName;
	private String password;
	private Map<Integer,Rent> reservations = new HashMap<Integer, Rent>();
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Map<Integer, Rent> getReservations() {
		return reservations;
	}
	public void setReservations(Map<Integer, Rent> reservations) {
		this.reservations = reservations;
	}
	
}
