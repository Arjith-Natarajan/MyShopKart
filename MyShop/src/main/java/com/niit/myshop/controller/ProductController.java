package com.niit.myshop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.niit.myshop.dao.ProductDAO;
import com.niit.myshop.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	private ProductDAO pdao;
	
	@RequestMapping(value="/Products" ,method = RequestMethod.GET)
	public String displayProducts (HttpServletRequest request, ModelMap model) {
		
		String cat = request.getParameter("val");
		
		switch (cat)
		{
			case "cam" : 	model.addAttribute("catname","Cameras");
							break;
			case "phn" : 	model.addAttribute("catname","Phones");
							break;
			case "acs" : 	model.addAttribute("catname","Accessories");
							break;
			case "wtch" : 	model.addAttribute("catname","Watches");
							break;
			case "usb" : 	model.addAttribute("catname","Memory Sticks");
							break;
			default : model.addAttribute("catname", "all Categories");
					
		}
		
		List<Product> list = pdao.getProductByCategory(cat);
		
		Gson gson = new Gson();
		String json;
		json = gson.toJson(list);
		System.out.println(json);
//		//model.addAttribute("lists", list);
		model.addAttribute("lists", json);
		return "Products";
		
	}

}
