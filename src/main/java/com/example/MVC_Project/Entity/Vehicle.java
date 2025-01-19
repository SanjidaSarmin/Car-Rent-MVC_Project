package com.example.MVC_Project.Entity;



import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@ToString
public class Vehicle {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;
	    private String name;
	    private String licensePlate;
	    private int capacity ;
	    private String type;
	    private String status; 
	    private double rentalPrice;
	    private String availability;
	    private String imageUrl;
	   
	    
}
