package com.rentalcarsystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rentalcarsystem.domain.Reservation;
import com.rentalcarsystem.domain.Vehicle;
import com.rentalcarsystem.service.ReservationService;
import com.rentalcarsystem.service.VehicleService;
@Controller()
public class ReservationController {
	@Autowired
	ReservationService reservationService;
	@Autowired
	VehicleService vehicleService;
	//Add new Reservation
	@RequestMapping(value = "/addreservation", method = RequestMethod.GET)
	public String getAddNewReservationForm(@ModelAttribute("newReservation") Reservation reservationToBeAdded, @RequestParam("id") int vehicleId,Model model) {
		
		model.addAttribute("vehicleId", vehicleId);
		return "addReservation";
	}
	
	@RequestMapping(value = "/addreservation", method = RequestMethod.POST)
	public String addReservation(@ModelAttribute("newReservation") Reservation reservationToBeAdded){
		Vehicle vehicle = vehicleService.findById(reservationToBeAdded.getvehicleId());
		reservationToBeAdded.setVehicle(vehicle);
		//reservationService.addReservation(reservationToBeAdded);
		return "redirect:/thankyou";
	}
	
	//Edit existing reservation
	@RequestMapping(value = "/editreservation", method = RequestMethod.GET)
	public String getEditReservationForm(@ModelAttribute("editingReservation") Reservation editingReservation, 
			Model model) {
		model.addAttribute("editingReservation", editingReservation);
		return "editreservationpage";
	}
	
	@RequestMapping(value = "/editreservation", method = RequestMethod.POST)
	public String editReservation(@ModelAttribute("editedReservation") Reservation editedReservation){
		reservationService.update(editedReservation);
		return "redirect:/success";
	}
	
	//Search existing reservation
	@RequestMapping(value = "/searchreservation", method = RequestMethod.GET)
	public String getSearchReservationForm(Model model) {
		int reservationId = 0;
		model.addAttribute("reservationId", reservationId);
		return "searchreservationpage";
	}
	
//	@RequestMapping(value = "/searchreservation", method = RequestMethod.POST)
//	public String searchReservation(@ModelAttribute("reservationId") int reservationId, 
//			Model model){
//		Reservation resultreservation = reservationService.findById(reservationId);
//		model.addAttribute("reservation", resultreservation);
//		return "viewreservation";
//	}
	
	//Delete reservation
	@RequestMapping(value = "/deletereservation", method = RequestMethod.GET)
	public String confirmDeleteReservation(@ModelAttribute("toBeDeletedReservation") Reservation reservationToBeDeleted, 
			Model model) {
		model.addAttribute("toBeDeletedReservation", reservationToBeDeleted);
		return "confirmdeletereservationpage";
	}
	
	@RequestMapping(value = "/confirmdeletereservation", method = RequestMethod.POST)
	public String deleteReservation(@ModelAttribute("deletingReservation") Reservation reservationToBeDeleted){
		boolean deleted = reservationService.delete(reservationToBeDeleted);
		if (deleted) {
			return "success";
		} else {
			return "failedpage";
		}
		
	}
	
	//View all reservation
	@RequestMapping(value = "/reservations", method = RequestMethod.POST)
	public String viewReservation(Model model){
		List<Reservation> reservations = reservationService.getAll();
		model.addAttribute("reservations", reservations);
		return "reservations";
	}
	
	
}
