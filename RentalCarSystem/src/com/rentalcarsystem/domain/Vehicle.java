package com.rentalcarsystem.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table
public class Vehicle {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int vehicleId;
	private String brand;
	private String type;
	private String model;
	private String year;
	private String plateNumber;
	private double dailyPrice;
	private String fuelType;
	private String seatQuantity;
	private String condition;
	@JsonIgnore
	@Transient
	private MultipartFile vehicleImage;
	public int getVehicleId() {
		return vehicleId;
	}
	public void setVehicleId(int vehicleId) {
		this.vehicleId = vehicleId;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getPlateNumber() {
		return plateNumber;
	}
	public void setPlateNumber(String plateNumber) {
		this.plateNumber = plateNumber;
	}
	public double getDailyPrice() {
		return dailyPrice;
	}
	public void setDailyPrice(double dailyPrice) {
		this.dailyPrice = dailyPrice;
	}
	public String getFuelType() {
		return fuelType;
	}
	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}
	public String getSeatQuantity() {
		return seatQuantity;
	}
	public void setSeatQuantity(String seatQuantity) {
		this.seatQuantity = seatQuantity;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public MultipartFile getVehicleImage() {
		return vehicleImage;
	}
	public void setVehicleImage(MultipartFile vehicleImage) {
		this.vehicleImage = vehicleImage;
	}

}
