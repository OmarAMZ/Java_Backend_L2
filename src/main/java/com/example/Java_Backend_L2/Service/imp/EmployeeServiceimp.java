///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package com.example.Java_Backend_L2.Service.imp;
//
//import com.example.Java_Backend_L2.Models.Employees;
//import java.util.List;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.stereotype.Service;
//import com.example.Java_Backend_L2.Repository.EmployeeRepository;
//import com.example.Java_Backend_L2.Service.EmployeeService;
//
//@Service("employeeservice")
//public class EmployeeServiceimp implements EmployeeService{
//
//    @Autowired
//    @Qualifier("employeerepository")
//    private EmployeeRepository employeeRepository;
//    
//    
//    @Override
//    public List<Employees> listAllEmployee() {
//        return employeeRepository.findAll();
//    }
//
//    @Override
//    public Employees AddEmployee(Employees employee) {
//        return employeeRepository.save(employee);
//    }
//    
//    
//    
//}
