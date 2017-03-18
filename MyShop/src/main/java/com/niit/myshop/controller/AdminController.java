package com.niit.myshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.niit.myshop.dao.ProductDAO;
import com.niit.myshop.model.Product;

@Controller
public class AdminController {
	
	@Autowired
	private ProductDAO pDao;
	
	@RequestMapping(value="/area", method=RequestMethod.GET)
	public  @ResponseBody String noticeProductRequest(Model model) {
		
		System.out.println("Admin Controller hit");
		List<Product> list = pDao.getAllProducts();
		Gson gson = new Gson();
		String json;
		json = gson.toJson(list);
	    return json;

	}
	
	@RequestMapping(value="/removeProduct", method=RequestMethod.GET)
	public @ResponseBody String removeProductHandler( @RequestParam("proID") String p_id,Model model) {
		
		System.out.println("Product Deletion Initiated");
		pDao.removeProduct(p_id);
		System.out.println("Product Deletion Successful!!!");
		return ("You have successfully DELETED 1 old product!");
	 

	}
	
	@RequestMapping(value="/addingProduct", method=RequestMethod.GET)
	public @ResponseBody String addProductHandler( @RequestParam("pro") String p,Model model) {
		
		System.out.println("Product Insertion Initiated");
		Gson gson = new Gson();
		pDao.addProduct(gson.fromJson(p, Product.class));
		System.out.println("Product Insertion Successful!!!");
		return ("You have successfully ADDED 1 new product!"); 

	}
	
	@RequestMapping(value="/updatingProduct", method=RequestMethod.GET)
	public @ResponseBody String updateProductHandler( @RequestParam("pro") String p,Model model) {
		
		System.out.println("Product Updation Initiated");
		Gson gson = new Gson();
		pDao.addProduct(gson.fromJson(p, Product.class));
		System.out.println("Product Updation Successful!!!");
		return ("You have successfully ADDED 1 new product!");
	 

	}

}
