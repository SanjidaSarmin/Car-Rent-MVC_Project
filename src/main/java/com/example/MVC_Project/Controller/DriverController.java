package com.example.MVC_Project.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.MVC_Project.Entity.Driver;
import com.example.MVC_Project.Service.DriverService;

@Controller
public class DriverController {
	  @Autowired
	  DriverService driverService;

	    // Home page to display all drivers
	    @GetMapping("/drivers")
	    public String Home(Model model) {
	        List<Driver> driverList = new ArrayList<>();
	        driverList = driverService.getAll();
	        model.addAttribute("driverList", driverList);
	        return "DashBoard/Driver";
	    }

	    // Delete a driver by ID
	    @GetMapping("/driverDelete/{id}")
	    public String Delete(@PathVariable Long id) {
	        driverService.delete(id);
	        return "redirect:/drivers"; 
	    }

	    // Edit driver details
	    @GetMapping("/driverEdit/{id}")
	    public String Edit(@PathVariable Long id, Model model) {
	        Optional<Driver> driver = driverService.getById(id);
	        driver.ifPresent(value -> model.addAttribute("driver", value));
	        return "DashBoard/editDrivers";
	    }

	    // Save or update a driver
	    @PostMapping("/driverSave")
	    public String saveDriver(@ModelAttribute Driver driver ) {
	        
	        driverService.save(driver);
	        return "redirect:/drivers";
	    }

	    // Add new driver form
	    @GetMapping("/newDriver")
	    public String addForm(Model model) {
	        return "DashBoard/AddDrivers";  // View name for adding a new driver
	    }

	    // View driver details
	    @GetMapping("/driverDetails/{id}")
	    public String Details(@PathVariable Long id, Model model) {
	        Optional<Driver> driver = driverService.getById(id);
	        driver.ifPresent(value -> model.addAttribute("driver", value));
	        return "DashBoard/DriverDetails";  // View name for viewing driver details
	    }


}
