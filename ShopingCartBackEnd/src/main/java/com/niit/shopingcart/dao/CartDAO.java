package com.niit.shopingcart.dao;

import java.util.List;

import com.niit.shopingcart.model.Cart;

public interface CartDAO {


	public List<Cart> list();

	public Cart get(String id);
	public void saveOrUpdate(Cart Cart);

	public void delete(int id);
	
	public int getTotalAmount(String id);
}
