package com.example.MVC_Project.Controller;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.MVC_Project.Entity.Booking;
import com.example.MVC_Project.Entity.Vehicle;
import com.example.MVC_Project.Repository.BookingRepository;
import com.example.MVC_Project.Service.BookingService;
import com.example.MVC_Project.Service.VehicleService;

@Controller
public class BookingController {
	@Autowired
    BookingService bookingService;

    @Autowired
    VehicleService vehicleService;
    @Autowired
    BookingRepository bookingRepository;

    // Show all bookings
    @GetMapping("/bookings")
    public String viewBookings(Model model) {
        List<Booking> bookingList = bookingService.getAll();
        model.addAttribute("bookingList", bookingList);
        
        List<Vehicle> vehicleList = vehicleService.getAll();
        model.addAttribute("vehicleList", vehicleList);
        return "DashBoard/Booking";
    }
    
    @GetMapping("/BookingDelete/{id}")
	public String Delete(@PathVariable Long id) {
    	bookingService.delete(id);
		return "redirect:/bookings";
	}
    

    // Edit a booking
    @GetMapping("/bookingEdit/{id}")
    public String editBooking(@PathVariable Long id, Model model) {
        Optional<Booking> booking = bookingService.getById(id);
        booking.ifPresent(value -> model.addAttribute("booking", value));
        
        // Get all vehicles to display in the dropdown for selection
        List<Vehicle> vehicleList = vehicleService.getAll();
        model.addAttribute("vehicleList", vehicleList);
        
        return "DashBoard/editBooking";
    }

    // Add a new booking (display the form)
    @GetMapping("/newBooking")
    public String addBookingForm(Model model) {
        List<Vehicle> vehicleList = vehicleService.getAll();
        model.addAttribute("vehicleList", vehicleList);
        return "DashBoard/AddBookings";
    }

    // View booking details
    @GetMapping("/bookingDetails/{id}")
    public String viewBookingDetails(@PathVariable Long id, Model model) {
        Optional<Booking> booking = bookingService.getById(id);
        booking.ifPresent(value -> model.addAttribute("booking", value));
        return "DashBoard/bookingDetails";
    }
    
    @PostMapping("/save")
	public String Saveuser(@ModelAttribute Booking booking) {
		bookingService.save(booking);
		return "redirect:/bookings";
	}
	
    
    @PostMapping("/book-car")
    public String submitBookingAndShowCars(@ModelAttribute Booking booking, Model model) {
        // Save the booking details first
        bookingService.save(booking);
        
        // Get the list of available vehicles (e.g., based on the number of persons, etc.)
        List<Vehicle> availableVehicles = vehicleService.getAll();
        
        // Add the booking and available vehicles to the model
        model.addAttribute("availableVehicles", availableVehicles);
        model.addAttribute("booking", booking);
        
        // Log the booking object to ensure it's saved properly
        System.out.println("Booking saved: " + booking);
        
        // Return the car selection page
        return "CarSelection"; // JSP page to select a car
    }


   
    
    @PostMapping("/confirm-booking")
    public String finalizeBooking(@RequestParam("vehicleId") Long vehicleId, @ModelAttribute Booking booking, Model model) {
     
    	 System.out.println("Booking Object: " + booking);
    	 
        Vehicle selectedCar = vehicleService.getById(vehicleId)
                .orElseThrow(() -> new RuntimeException("Car not found"));

        booking.setVehicle_id(vehicleId);
        bookingService.save(booking);

        // Add a success message
        model.addAttribute("message", "Your booking has been confirmed with " + selectedCar.getName());
        
        model.addAttribute("selectedCar", selectedCar);
        return "booking-confirmation";
    }

}
