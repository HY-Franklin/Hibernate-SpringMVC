package com.hibernatedemo;

import com.sun.org.apache.xpath.internal.operations.Mod;
import org.hibernate.Session;
import org.hibernate.annotations.Fetch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.persistence.Query;
import java.util.List;

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

    @GetMapping("/showFormForAdd")
    public ModelAndView showFormForAdd(Model model){
        Customer customer=new Customer();
        model.addAttribute("customer",customer);

        return new ModelAndView("/customer-form.jsp");
    }
    @PostMapping("/saveCustomer")
    public ModelAndView saveCustomer(@ModelAttribute("customer") Customer customer){
        custRepo.save(customer);

        return new ModelAndView("redirect:/c/list");
    }

    @GetMapping("/showFormForUpdate")
    public ModelAndView showFormForAdd(@RequestParam("customerId") int Id,Model model){
        model.addAttribute("customer",custRepo.getOne(Id));
        return new ModelAndView("/customer-form.jsp");
    }
    @GetMapping("/delete")
    public ModelAndView deleteCustomer(@RequestParam("customerId") int Id){
        custRepo.delete(custRepo.getOne(Id));
        return new ModelAndView("redirect:/c/list");
    }


}
