package com.niit.myshop.dao;

import java.util.List;

import com.niit.myshop.model.CartItem;


public interface CartDAO {
	public void removeProduct(int p_id);
	public List<CartItem> getCartItems(int id);
	public void addProduct(CartItem newItem);

}
