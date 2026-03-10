package com.enomy.finance.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.enomy.finance.model.User;
import com.enomy.finance.service.UserService;

@Controller
public class AuthController {

    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public String loginUser(@RequestParam String email,
                            @RequestParam String password,
                            Model model) {

        var userOptional = userService.findByEmail(email);

        if (userOptional.isPresent()) {

            var user = userOptional.get();

            if (user.getPassword().equals(password)) {

            	if (user.getRole().equals("ADMIN")) {
            	    return "redirect:/admin/admin-dashboard";
            	}

            	if (user.getRole().equals("CLIENT")) {
            	    return "redirect:/client/client-dashboard";
            	}

            }
        }

        model.addAttribute("error", "Invalid email or password");
        return "login";
    }
    
    
    @GetMapping("/login")
    public String login(Model model) {
        model.addAttribute("activePage", "login");
        return "login";
    }

    @GetMapping("/signup")
    public String signup(Model model) {
        model.addAttribute("activePage", "signup");
        return "signup";
    }

    @PostMapping("/signup")
    public String registerUser(@RequestParam("fullname") String fullname,
                               @RequestParam("email") String email,
                               @RequestParam("password") String password,
                               Model model) {

        model.addAttribute("activePage", "signup");

        if (userService.emailExists(email)) {
            model.addAttribute("error", "Email is already registered.");
            return "signup";
        }

        User user = new User();
        user.setFullname(fullname);
        user.setEmail(email);
        user.setPassword(password);
        user.setRole("CLIENT");

        userService.registerUser(user);

        model.addAttribute("success", "Account created successfully. You can now log in.");
        return "login";
    }
}