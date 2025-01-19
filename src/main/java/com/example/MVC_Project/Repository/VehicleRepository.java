package com.example.MVC_Project.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.MVC_Project.Entity.Vehicle;
@Repository
public interface VehicleRepository extends JpaRepository<Vehicle, Long>{


}
