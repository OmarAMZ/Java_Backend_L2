/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.Java_Backend_L2.Controllers;

import com.example.Java_Backend_L2.Service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/getallemployee")
public class EmployeeController {
    
//    @Autowired
//    @Qualifier("employeeservice")
//    private EmployeeService employeeService;
//    
//    public ModelAndView listAllEMployees(){
//        
//        ModelAndView mav=new ModelAndView("list");
//        mav.addObject("employees", employeeService.listAllEmployee());
//        
//        return mav;
//    }
}
