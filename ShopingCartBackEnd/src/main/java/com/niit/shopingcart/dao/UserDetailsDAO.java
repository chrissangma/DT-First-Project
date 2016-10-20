package com.niit.shopingcart.dao;

import java.util.List;

import com.niit.shopingcart.model.UserDetails;

public interface UserDetailsDAO {


	public List<UserDetails> list();

	public UserDetails get(String id);

	public UserDetails getByName(String name);

	public void saveOrUpdate(UserDetails userDetails);

	public String delete(String id);


}