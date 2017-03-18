package com.niit.myshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.myshop.model.Product;
import com.niit.myshop.model.User;

@Controller
public class MainController {

	@RequestMapping(value = {"/" , "/home"})  
	public String goToHome(){
		return "Landing";
	}
	@RequestMapping("/login")
	public String loginToAccount(Model model) {
		model.addAttribute("user", new User());
		return "Login";
	}
	@RequestMapping(value = "/sudologin", method = RequestMethod.GET)
	public String loginToAdmin(Model model,@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {
		//		model.addAttribute("user", new User());
		if (error != null) {
			model.addAttribute("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addAttribute("msg", "You've been logged out successfully.");
		}
		return "AdminLogin";
	}

	@RequestMapping("/About")
	public String goToAbout() {

		return "About";
	}

	@RequestMapping(value="/admin**", method = RequestMethod.GET)
	public String goToAdmin(Model model) {
		model.addAttribute("product", new Product());
		return "AdminHome";
	}
	@RequestMapping("/Contact")
	public String goToContact() {
		return "Contact";
	}
	@RequestMapping("/ErrorPage")
	public String showError() {
		return "ErrorPage";
	}
	@RequestMapping("/Footer")
	public String showFooter() {
		return "Footer";
	}
	@RequestMapping("/Header")
	public String showHeader() {
		return "Header";
	}
	@RequestMapping("/Signup")
	public String goToSignup(Model model) {
		model.addAttribute("user", new User());
		return "Signup";
	}
	@RequestMapping("/Welcome")
	public String goToAccount() {
		return "Welcome";
	}

}
