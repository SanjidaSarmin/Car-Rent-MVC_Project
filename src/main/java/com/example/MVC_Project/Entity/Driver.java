package com.example.MVC_Project.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Setter
@Getter
@ToString
public class Driver {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
    private Long id;
    private String name;
    private String email;
    private String phone;
    private String licenseNumber;
    private int experienceYears;
    private String status;
}
