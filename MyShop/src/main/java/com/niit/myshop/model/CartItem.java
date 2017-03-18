package com.niit.myshop.model;

import java.io.Serializable;

public class CartItem implements Serializable {

        /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		private int KartItemid;
        private int quantity=1;
        private double total;
 
        private Product item;



        public CartItem() {

        }

        public CartItem( int quantity, double total, Product item) {
            super();

            this.quantity = quantity;
            this.total = total;
            this.item = item;

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

		public Product getItem() {
			return item;
		}

		public void setItem(Product item) {
			this.item = item;
		}

		@Override
		public String toString() {
			return "CartItem [KartItemid=" + KartItemid + ", quantity=" + quantity + ", total=" + total + ", item="
					+ item + "]";
		}
        
}
