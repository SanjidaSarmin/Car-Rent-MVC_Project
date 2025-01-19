package com.example.MVC_Project.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.MVC_Project.Entity.Driver;
import com.example.MVC_Project.Repository.DriverRepository;



@Service
public class DriverService {
	
	 @Autowired
	    private DriverRepository driverRepository;

	    // Save a new driver
	    public Driver save(Driver driver) {
	        return driverRepository.save(driver);
	    }

	    // Get all drivers
	    public List<Driver> getAll() {
	        return driverRepository.findAll();
	    }

	    // Get a driver by ID
	    public Optional<Driver> getById(Long id) {
	        return driverRepository.findById(id);
	    }

	    // Delete a driver by ID
	    public void delete(Long id) {
	        driverRepository.deleteById(id);
	    }
	
}
