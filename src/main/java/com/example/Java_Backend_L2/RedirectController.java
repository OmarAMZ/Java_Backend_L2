/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.Java_Backend_L2;


import com.example.Java_Backend_L2.Models.Employees;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RedirectController {
   
    @RequestMapping("/principal")
    public String showprincipal(Model model) {
        return "principal";
    }
    
    @RequestMapping("/getallemployee")
    public String showEmployees(Model model) {
        return "getallemployees";
    }
    
    @RequestMapping("/addnewcontract")
    public String showAddContract(Model model) {
        return "addcontracts";
    }
    
    @RequestMapping("/addnewemployee")
    public String showAddEmployee(Model model) {
        return "addemployees";
    }
    @RequestMapping("/updatedataemployee")
    public String showUpdateEmployee(Model model) {
        return "updateemployee";
    }
    @RequestMapping("/deletecontract")
    public String showDeleteContract(Model model) {
        return "deletecontracts";
    }
}
