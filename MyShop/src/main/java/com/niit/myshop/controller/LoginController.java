package com.niit.myshop.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.niit.myshop.dao.UserDAO;
import com.niit.myshop.model.CartItem;
import com.niit.myshop.model.User;

@Controller
//@SessionAttributes("UserBean")
public class LoginController {
	
	@Autowired
	private UserDAO userDao;
	
	@RequestMapping( value="/loginh",method = RequestMethod.POST)
	public String loginValidation(HttpSession session, @ModelAttribute User user,Model model){
		System.out.println("########  "+ user);
		User fetchedUser = userDao.get(user.getUserName());
		try{
		if(user.getPassword().equals(fetchedUser.getPassword()))
		{
			System.out.println("####### LOGIN  SUCCESS #######");
			session.setAttribute("Name", fetchedUser.getFirstName());
			//model.addAttribute("Name", user.getFirstName());
			session.setAttribute("LoggedIn", true);
			session.setAttribute("UserBean", fetchedUser);
			session.setAttribute("CartItems", new ArrayList<CartItem>());
			//model.addAttribute("UserBean", user);
			return "Welcome";
		}
		else {
		model.addAttribute("Error", "Password incorrect");
		return "Login";
		}	}
		catch (NullPointerException e){ model.addAttribute("Error", "Username Not registered");
		return "Login";  }
	}
	
	 @RequestMapping(value="/logout",method = RequestMethod.GET)
     public String logout(HttpServletRequest request,Model model){
         HttpSession httpSession = request.getSession();
         httpSession.invalidate();
         System.out.println("####### LOGout  SUCCESS #######");
         model.addAttribute("Msg", "You have been logged out successfully!");
         return "Login";
     }
	

}
