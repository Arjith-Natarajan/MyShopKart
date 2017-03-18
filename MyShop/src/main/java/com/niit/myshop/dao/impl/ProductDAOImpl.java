package com.niit.myshop.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.myshop.dao.ProductDAO;
import com.niit.myshop.model.Product;
import com.niit.myshop.model.User;

public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	List<Product> plist = new ArrayList<Product>();
	public ProductDAOImpl() {		

	}

	public ProductDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public void addProduct(Product newProduct) {
		Session s=  sessionFactory.openSession();
		Transaction tx = s.beginTransaction();
//		s.save(newProduct);
		s.saveOrUpdate(newProduct);
		tx.commit();
		s.close();
		System.out.println("Product inserted");	

	}
	

	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Product> getProductByCategory(String cat) {
		Session s=  sessionFactory.openSession();
		Transaction tx = s.beginTransaction();
		Criteria criteria = s.createCriteria(Product.class);
		List<Product> list;
		if(cat.equals("all"))
		 list = criteria.add(Restrictions.eq("available", true)).list();
		else
		list = criteria.add(Restrictions.eq("category", cat)).add(Restrictions.eq("available", true)).list();
		tx.commit();
		s.close();
		System.out.println("Products Fetched");
		return list;
	}
	
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Product> getAllProducts(){
		Session s=  sessionFactory.openSession();
		Transaction tx = s.beginTransaction();
		Criteria criteria = s.createCriteria(Product.class);
		List<Product> list;
		list = criteria.list();
		tx.commit();
		s.close();
		System.out.println("Products Fetched");
		return list;
		
	}

	
	public void removeProduct(String p_id) {
		Session s=  sessionFactory.openSession();
		Transaction tx = s.beginTransaction();
		Product product ;
		product = (Product)s.load(Product.class,p_id);
		s.delete(product);
		tx.commit();
		s.close();
		System.out.println("Product Deleted");
		
	}

	public Product getProduct(String p_id) {
		Session s=  sessionFactory.openSession();
		Transaction tx = s.beginTransaction();
		
		Criteria criteria = s.createCriteria(Product.class);
		Product fproduct= (Product) criteria.add(Restrictions.eq("productID", p_id)).uniqueResult();
		tx.commit();
		s.close();
		System.out.println("Product fetched by id");	
		if(fproduct!=null) {return fproduct;}
		return null;
		
		
		
	}

}
