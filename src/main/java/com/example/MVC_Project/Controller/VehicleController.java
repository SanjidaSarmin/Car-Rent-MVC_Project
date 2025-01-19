package com.example.MVC_Project.Controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.MVC_Project.Entity.Vehicle;
import com.example.MVC_Project.Service.VehicleService;



@Controller
public class VehicleController {
	@Autowired
	VehicleService vehicleService;
	@GetMapping("/vehicles")
	public String Home(Model model) {

		List<Vehicle> vehicleList = new ArrayList<>();
		vehicleList = vehicleService.getAll();
		model.addAttribute("vehicleList", vehicleList);
		return "DashBoard/Vehicles";
	}

//  delete user
	@GetMapping("/vehidelete/{id}")
	public String Delete(@PathVariable Long id) {
		vehicleService.delete(id);
		return "redirect:/vehicles";
	}
	

		
	//	Edit user
	@GetMapping("/VehiEdit/{id}")
	public String Edit(@PathVariable Long id, Model model) {

		Optional<Vehicle> vehicle = vehicleService.getById(id);
		vehicle.ifPresent(value -> model.addAttribute("vehicle", value));
		return "DashBoard/editVehicles";
	}

//	SAVE user
	@PostMapping("/vehiSave")
	public String saveVehicle(@ModelAttribute Vehicle vehicle, @RequestParam("imageFile") MultipartFile imageFile) {
	    if (!imageFile.isEmpty()) {
	        String imageUrl = saveImageToFileSystem(imageFile); // Save the file
	        vehicle.setImageUrl(imageUrl); // Set the image URL
	    }
	    vehicleService.save(vehicle);
	    return "redirect:/vehicles";
	}

	
//	Add new user
	@GetMapping("/newVehicles")
	public String addForm(Model model) {
//		model.addAttribute("product", new Employee());
		return "DashBoard/AddVehicles";
	}
	
	/* ViewVehicle */
	@GetMapping("/VehiDetails/{id}")
	public String Details(@PathVariable Long id, Model model) {

		Optional<Vehicle> vehicle = vehicleService.getById(id);
		vehicle.ifPresent(value -> model.addAttribute("vehicle", value));
		return "DashBoard/ViewVehicles";
	}


	
//	Images
	private String saveImageToFileSystem(MultipartFile file) {
	    try {
	        String fileName = file.getOriginalFilename();
	        String uploadDir = "E://Images";
	        Path uploadPath = Paths.get(uploadDir);

	        if (!Files.exists(uploadPath)) {
	            Files.createDirectories(uploadPath);
	        }

	        Path filePath = uploadPath.resolve(fileName);
	        file.transferTo(filePath);

	        return "/E://Images/" + fileName; 
	    } catch (IOException e) {
	        throw new RuntimeException("Failed to store file", e);
	    }
	}

	
	  //	Search user

//	@GetMapping("/search")
//	public String Search(
//			@RequestParam(required = false) String name,
//			@RequestParam(required = false) String email,
//			@RequestParam(required = false) Double salary, Model model) {  
//		
//		List<Product> productList = new ArrayList<>();
//		productList = productService.search(name,email, salary);
//		model.addAttribute("empList", empList);
//		
//		return "index";
//	}


}
