package com.rentalcarsystem.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.rentalcarsystem.domain.Vehicle;
import com.rentalcarsystem.service.VehicleService;

@Controller()
@RequestMapping("/vehicles")
public class VehicleController {
	
	@Autowired
	VehicleService vehicleService; 
	
	@RequestMapping
	public ModelAndView allVehicles() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("vehicles", vehicleService.getAll());
		modelAndView.setViewName("vehicles");
		return modelAndView;
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getAddNewVehicleForm(@ModelAttribute("newVehicle") Vehicle newVehicle) {
	   return "addVehicle";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addNewVehicle(@ModelAttribute("newVehicle")@Valid Vehicle vehicle, BindingResult result, HttpServletRequest request) {
		System.out.println(vehicle.getBrand());
		if(result.hasErrors()) {
		   return "addVehicle";
		}
		
		MultipartFile vehicleImage = vehicle.getVehicleImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
				
			if (vehicleImage!=null && !vehicleImage.isEmpty()) {
		       try {
		    	   vehicleImage.transferTo(new File(rootDirectory+"\\resources\\images\\"+vehicle.getPlateNumber()+ ".png"));
		    	   //System.out.println("Directory*******"+rootDirectory+"\\resources\\images\\"+vehicle.getPlateNumber()+ ".png");
		       } catch (Exception e) {
				throw new RuntimeException("Vehicle Image saving failed", e);
		   }
		   }
			
		vehicleService.save(vehicle);
		return "redirect:/vehicles";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String confirmDeleteVehicle(Model model, @RequestParam("id") String vehicleId) {
		Vehicle vehicle = vehicleService.getVehicleById(vehicleId);
		model.addAttribute("vehicle", vehicle);
		return "deleteVehicle";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deleteVehicle(HttpServletRequest request) {
		System.out.println("Delete vehicle !!!"+request.getParameter("vehicleId") );
		vehicleService.delete(vehicleService.getVehicleById(request.getParameter("vehicleId")));
		return "redirect:/vehicles";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String showEditVehicleForm(@ModelAttribute("editVehicle") Vehicle vvehicle,Model model, @RequestParam("id") String vehicleId) {
		Vehicle vehicle = vehicleService.getVehicleById(vehicleId);
		model.addAttribute("vehicle", vehicle);
		return "editVehicle";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String editVehicle(@ModelAttribute("editVehicle")@Valid Vehicle vehicle, BindingResult result, HttpServletRequest request) {
		   if(result.hasErrors()) {
			   return "editVehicle";
			}
//			
//			MultipartFile vehicleImage = vehicle.getVehicleImage();
//			String rootDirectory = request.getSession().getServletContext().getRealPath("/");
//					
//				if (vehicleImage!=null && !vehicleImage.isEmpty()) {
//			       try {
//			    	   vehicleImage.transferTo(new File(rootDirectory+"\\resources\\images\\"+vehicle.getPlateNumber()+ ".png"));
//			    	   //System.out.println("Directory*******"+rootDirectory+"\\resources\\images\\"+vehicle.getPlateNumber()+ ".png");
//			       } catch (Exception e) {
//					throw new RuntimeException("Vehicle Image saving failed", e);
//			   }
//			   }
		   System.out.println(vehicle.getVehicleId());	
			vehicleService.edit(vehicle);
			return "redirect:/vehicles";
		}
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String showSearchVehicleForm() {
		return "searchVehicle";
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String getVehiclesByBrand(Model model, HttpServletRequest request) {
		System.out.println("Search*********"+request.getParameter("brand"));
		//ArrayList<Vehicle> vehicles = new ArrayList<Vehicle>();
		//vehicles = vehicleService.getVehiclesByBrand(request.getParameter("brand"));
		model.addAttribute("vehicles", vehicleService.getVehiclesByBrand(request.getParameter("brand")));
		//if( vehicles.i)
		return "vehicles";
	}
		
}
