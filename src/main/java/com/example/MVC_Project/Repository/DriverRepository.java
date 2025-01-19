package com.example.MVC_Project.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.MVC_Project.Entity.Driver;

@Repository
public interface DriverRepository extends JpaRepository<Driver, Long>{

}
