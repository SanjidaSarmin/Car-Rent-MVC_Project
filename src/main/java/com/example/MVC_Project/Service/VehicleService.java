package com.example.MVC_Project.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.MVC_Project.Entity.Vehicle;
import com.example.MVC_Project.Repository.VehicleRepository;

@Service
public class VehicleService {
	@Autowired
	VehicleRepository vehicleRepository;
	
	public Vehicle save(Vehicle vehicle) {
		return vehicleRepository.save(vehicle);
	}

	public List<Vehicle> getAll() {
		return vehicleRepository.findAll();

	}

	public Optional<Vehicle> getById(Long id) {
		return vehicleRepository.findById(id);             
	}

	public void delete(Long id) {
		vehicleRepository.deleteById(id);
	}
	
	

//	public List<Employee> search( String name,String email, Double salary) {
//		
//		return vehicleRepository.search(name,email, salary);
//		
//	}

}
