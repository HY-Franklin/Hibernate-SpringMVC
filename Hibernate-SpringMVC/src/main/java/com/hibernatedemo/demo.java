package com.hibernatedemo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class demo {
    @RequestMapping("jsp")
    public String test() {
        System.out.println("Hi");
        return "home.jsp";
    }

    @RequestMapping("html")
//    public String testh() {
//        System.out.println("Hi");
//        return "hell.html";
//    }
    public ModelAndView ht(){
        return new ModelAndView("hell.html");
    }
}
