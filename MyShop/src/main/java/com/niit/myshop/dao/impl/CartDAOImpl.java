package com.niit.myshop.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.myshop.dao.CartDAO;
import com.niit.myshop.model.CartItem;
import com.niit.myshop.model.Product;

public class CartDAOImpl implements CartDAO {
	@Autowired
	private SessionFactory sessionFactory;
	public List<CartItem> clist = new ArrayList<CartItem>();

	
	public CartDAOImpl() {
		
	}

	public CartDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	public List<CartItem> getCartItems(int id) {	
		Session s=  sessionFactory.openSession();
		Transaction tx = s.beginTransaction();
		Criteria criteria = s.createCriteria(CartItem.class);
		List<CartItem> list;		
		 list = criteria.add(Restrictions.eq("u_id", id)).list();		
		tx.commit();
		s.close();
		System.out.println("Items Fetched");
		return list;
	}
	
	public void addProduct(CartItem newItem) {
		Session s=  sessionFactory.openSession();
		Transaction tx = s.beginTransaction();
//		s.save(newProduct);
		s.saveOrUpdate(newItem);
		tx.commit();
		s.close();
		System.out.println("Item inserted");	

	}
	
	public void removeProduct(int p_id) {
		Session s=  sessionFactory.openSession();
		Transaction tx = s.beginTransaction();
		CartItem product ;
		product = (CartItem)s.load(CartItem .class,p_id);
		s.delete(product);
		tx.commit();
		s.close();
		System.out.println("Product Deleted");
		
	}

}
