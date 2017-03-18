package com.niit.myshop.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "PRODUCTS")
public class Product implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3287619524858405056L;

	@Id
	@GeneratedValue(generator="system-uuid")
	@GenericGenerator(name="system-uuid", strategy = "uuid")
	@Column(name = "P_ID", unique = true, nullable = false)
	private String productID;
	
	@Column(name = "P_NAME", nullable = false)
	private String productName;
	
	@Column(name = "DESCRIPTION", nullable = true)
	private String productDesc="no desc";
	
	@Column(name = "CAT", nullable = false)
	private String category;
	
	@Column(name = "PRICE", nullable = false)
	private double price = 0.0;
	
	@Column(name = "IS_AVAIL", nullable = false)
	private boolean available=true;
	
	@Column(name = "S_ID", nullable = true)
	private String supplierID;
	
	public Product(){}
	public Product(String string, String string2, double d1) {
		
		this.productName = string2;
		this.category = string;
		this.price = d1;
	}
	public Product(String string0 ,String string, String string2, String string3, double d1 , boolean status ) {
		
		this.productID = string0;
		this.productName = string2;
		this.category = string;
		this.productDesc = string3;
		this.price = d1;
		this.available= status;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public boolean isAvailable() {
		return available;
	}
	public void setAvailable(boolean available) {
		this.available = available;
	}
	public String getSupplierID() {
		return supplierID;
	}
	public void setSupplierID(String supplierID) {
		this.supplierID = supplierID;
	}
	@Override
	public String toString() {
		return "Product [productID=" + productID + ", productName=" + productName + ", productDesc=" + productDesc
				+ ", category=" + category + ", price=" + price + ", available=" + available + ", supplierID="
				+ supplierID + "]";
	}
}
