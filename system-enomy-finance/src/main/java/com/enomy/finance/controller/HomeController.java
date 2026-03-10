package com.enomy.finance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("activePage", "home");
        return "landing";
    }

    @GetMapping("/about")
    public String about(Model model) {
        model.addAttribute("activePage", "about");
        return "about";
    }

    @GetMapping("/landing-converter")
    public String converter(Model model) {
        model.addAttribute("activePage", "landing-converter");
        return "landing-converter";
    }

    @GetMapping("/landing-investment")
    public String investment(Model model) {
        model.addAttribute("activePage", "landing-investment");
        return "landing-investment";
    }
}