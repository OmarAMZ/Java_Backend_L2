package com.example.Java_Backend_L2.Repository;

import com.example.Java_Backend_L2.Models.Employees;
import java.io.Serializable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employees,Serializable>{
    
}
