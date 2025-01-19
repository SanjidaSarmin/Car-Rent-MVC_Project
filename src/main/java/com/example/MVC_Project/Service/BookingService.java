package com.example.MVC_Project.Service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.MVC_Project.Entity.Booking;
import com.example.MVC_Project.Repository.BookingRepository;

@Service
public class BookingService {
	@Autowired
	BookingRepository bookingRepository;
	@Autowired
	VehicleService vehicleService;

	// Save a new booking
	public void save(Booking booking) {

		bookingRepository.save(booking);
	}

	// Get all bookings
	public List<Booking> getAll() {
		return bookingRepository.findAll();
	}

	// Get a booking by ID
	public Optional<Booking> getById(Long id) {
		return bookingRepository.findById(id);
	}

	// Delete a booking by ID
	public void delete(Long id) {
		bookingRepository.deleteById(id);
	}

}
