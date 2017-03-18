package com.niit.myshop.dao;

import java.util.List;

import com.niit.myshop.model.Product;

public interface ProductDAO {
	
	public void addProduct(Product newProduct);
	public void removeProduct(String p_id);
	public List<Product> getProductByCategory(String cat);
	public List<Product> getAllProducts();

}
