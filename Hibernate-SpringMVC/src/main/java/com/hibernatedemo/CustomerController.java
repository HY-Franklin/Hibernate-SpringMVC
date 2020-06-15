package com.hibernatedemo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/c")
public class CustomerController {

    @Autowired
    CustRepo custRepo;

    @RequestMapping("/html")
    public String testh() {
        System.out.println("Hi");
        return "hell.html";
    }

    @RequestMapping("/list")
    public ModelAndView listAll(Model model){
        model.addAttribute("customers",custRepo.findAll());
        return new ModelAndView("/list-customers.jsp");
    }
}
