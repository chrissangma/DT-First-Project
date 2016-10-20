package com.niit.shopingcart.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.CartDAO;
import com.niit.shopingcart.model.Cart;

public class CartTest {

	public static void main(String[] args) {
	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit.shopingcart");
		context.refresh();
		
		Cart ct = (Cart)context.getBean("cart");
		//ct.setId(1);
		ct.setPrice(500);
		ct.setProductName("PRD_002");
		ct.setQuantity(10);
		ct.setStatus('A');
		ct.setTotal(1000);
		// ct.setUserID("NIIT");
	    CartDAO cartDAO = (CartDAO)context.getBean("cartDAO");
	    cartDAO.saveOrUpdate(ct);
		
	}

}
