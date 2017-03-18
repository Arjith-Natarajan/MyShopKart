package com.niit.myshop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.niit.myshop.dao.CartDAO;
import com.niit.myshop.dao.ProductDAO;
import com.niit.myshop.model.CartItem;
import com.niit.myshop.model.Product;
import com.niit.myshop.model.User;

@Controller
public class ProductController {
	
	@Autowired
	private ProductDAO pdao;
	
	@Autowired
	private CartDAO cdao;
	
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
	@RequestMapping(value="/cart", method=RequestMethod.GET)
	public  @ResponseBody String noticeProductRequest(HttpSession session,Model model) {
		
		System.out.println("Admin Controller hit");
		User x= (User) session.getAttribute("UserBean");
		List<CartItem> list;
		try{
		 list = cdao.getCartItems(x.getUserId());
		}
		catch(NullPointerException e){return null;}
//		Product p1 = new Product("P-ILCA-99M2","cam", "Sony DSLR","α99 II provides a back-illuminated 42.4MP 35 mm full-frame CMOS image sensor, Hybrid Phase Detection AF system, up to 12fps high-speed continuous shooting, 5-axis optical image stabilisation and advanced 4K movie recording.", 4250,true);
//		User x= (User) session.getAttribute("UserBean");
//		CartItem citem = new CartItem(2,p1.getProductName(),p1.getPrice(),x.getUserId());
		Gson gson = new Gson();
		String json=null;
		json = gson.toJson(list);
		System.out.println(json);
	    return json;

	}
	
	@RequestMapping(value="/productDetail" ,method = RequestMethod.GET)
	public String getDetails(HttpServletRequest request, ModelMap model) {
		
		String id = request.getParameter("fetchid");
		Gson gson = new Gson();
		String json = gson.toJson(pdao.getProduct(id));
		model.addAttribute("product_item", json);
		return "Details";
	}
	
	@RequestMapping(value="/addToCart", method=RequestMethod.GET)
	public @ResponseBody String addProductHandler( HttpSession session, @RequestParam("pro") String p,Model model) {
		
		System.out.println("Cart Insertion Initiated");
		Gson gson = new Gson();
		Product x =gson.fromJson(p, Product.class);
		User y= (User) session.getAttribute("UserBean");
		CartItem citem = new CartItem(1,x.getProductName(),x.getPrice(),y.getUserId());
		System.out.println("#########"+citem);
		cdao.addProduct(citem);
//		cdao.addProduct(citem);
		System.out.println("Product Insertion Successful!!!");
		return ("You have successfully ADDED 1 new product!"); 

	}
	
	@RequestMapping(value="/removeItem", method=RequestMethod.GET)
	public @ResponseBody String removeProductHandler( @RequestParam("proID") int p_id,Model model) {
		
		System.out.println("Product Deletion Initiated");
		cdao.removeProduct(p_id);
		System.out.println("Product Deletion Successful!!!");
		return ("You have successfully DELETED 1 old product!");
	 

	}

}
