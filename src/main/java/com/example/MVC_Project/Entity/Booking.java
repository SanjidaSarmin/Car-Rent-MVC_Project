package com.example.MVC_Project.Entity;

import java.time.LocalDate;

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
public class Booking {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private Long vehicle_id;
	private String pickup_location;
	private LocalDate pickup_date;
	private String pickup_time;
	private LocalDate return_date;
	private String return_time;
	private int person;
	private String name;
	private String phone;
	private int age;
	private String status;
	

}
