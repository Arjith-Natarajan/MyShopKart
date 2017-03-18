package com.niit.myshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.myshop.dao.UserDAO;
import com.niit.myshop.model.User;

@Controller
public class RegisterController {

	@Autowired
	private UserDAO userDao;
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String saveUser(@ModelAttribute User user, Model model) {
		System.out.println("########  "+ user);
		userDao.saveOrUpdate(user);
		model.addAttribute("Msg", "You have successfully registered! Now let's try logging in :)");
		return "Login";
	} 
}
