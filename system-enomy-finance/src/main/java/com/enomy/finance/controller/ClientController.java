package com.enomy.finance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/client")
public class ClientController {

    @GetMapping("/client-dashboard")
    public String clientDashboard() {
        return "client/client-dashboard";
    }

}