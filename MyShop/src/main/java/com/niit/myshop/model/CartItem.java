package com.niit.myshop.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="Cart")
@Component
public class CartItem implements Serializable {

 
	/**
	 * 
	 */
	private static final long serialVersionUID = 2148379415619933775L;
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
		private int KartItemid;
	
        private int quantity=1;
        private double total;
 
        private String p_name;
        private double p_price;
        private int u_id;



        public CartItem() {

        }       


		public CartItem(int quantity, String p_name, double p_price,int userid) {
			super();
			this.quantity = quantity;
			this.p_name = p_name;
			this.p_price = p_price;
			this.u_id = userid;
		}



		public int getKartItemid() {
			return KartItemid;
		}



		public void setKartItemid(int kartItemid) {
			KartItemid = kartItemid;
		}



		public int getQuantity() {
			return quantity;
		}



		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}



		public double getTotal() {
			return total;
		}



		public void setTotal(double total) {
			this.total = total;
		}



		public String getP_name() {
			return p_name;
		}



		public void setP_name(String p_name) {
			this.p_name = p_name;
		}



		public double getP_price() {
			return p_price;
		}



		public void setP_price(double p_price) {
			this.p_price = p_price;
		}


		@Override
		public String toString() {
			return "CartItem [KartItemid=" + KartItemid + ", quantity=" + quantity + ", total=" + total + ", p_name="
					+ p_name + ", p_price=" + p_price + ", u_id=" + u_id + "]";
		}


		public int getU_id() {
			return u_id;
		}


		public void setU_id(int u_id) {
			this.u_id = u_id;
		}

       
        
}
