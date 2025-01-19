package com.example.MVC_Project.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String Home() {
		return "HomePage";
	}
	@GetMapping("/car")
	public String Car() {
		return "CarView";
	}
	@GetMapping("/reservation")
	public String reservation() {
		return "Reservation";
	}
	@GetMapping("/rent")
	public String rent() {
		return "Dailyrent";
	}
	
	
	@GetMapping("/about")
	public String about() {
		return "About";
	}
	@GetMapping("/contact")
	public String contact() {
		return "Contact";
	}
	@GetMapping("/dashboard")
	public String DashBoard() {
		return "DashBoard/AdminDashboard";
	}
	
	@GetMapping("/client")
	public String client() {
		return "DashBoard/Client";
	}
	
	@GetMapping("/driver")
	public String Driver() {
		return "DashBoard/Driver";
	}
	
//	@GetMapping("/vehicle")
//	public String Vehicle() {
//		return "DashBoard/Vehicles";
//	}
}
