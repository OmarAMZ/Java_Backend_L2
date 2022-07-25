
package com.example.Java_Backend_L2.Service;

import com.example.Java_Backend_L2.Models.Employees;
import java.util.List;


public interface EmployeeService {
    
    public abstract List<Employees> listAllEmployee();
    
    public abstract Employees AddEmployee(Employees employee);
}
