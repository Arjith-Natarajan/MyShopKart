package com.niit.myshop.dao.impl;

import java.util.ArrayList;
import java.util.List;


import com.niit.myshop.dao.CartDAO;
import com.niit.myshop.model.CartItem;

public class CartDAOImpl implements CartDAO {
	
	public List<CartItem> clist = new ArrayList<CartItem>();

	
	public CartDAOImpl() {
		super();
	}


	public List<CartItem> getCartItems() {	
		
		return clist;
	}
	
	public void addProduct(CartItem newItem) {
		
		System.out.println("DAO HIT here --------------");
		clist.add(newItem);
		System.out.println("DAO HIT2 here --------------");

	}

}
