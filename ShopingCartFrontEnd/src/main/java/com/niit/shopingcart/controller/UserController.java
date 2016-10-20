package com.niit.shopingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.model.Category;
import com.niit.shopingcart.model.User;
import com.niit.shopingcart.model.UserDetails;
import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.UserDAO;
import com.niit.shopingcart.dao.UserDetailsDAO;

@Controller
public class UserController {

   @Autowired
   UserDAO userDAO;
   
   @Autowired
   UserDetailsDAO userDetailsDAO;
   @Autowired
   CategoryDAO categoryDAO; 
   User user;
   
   
   @RequestMapping(value = "/onLoad", method = RequestMethod.GET)
	public String onLoad(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryDAO.list());
		return "/home";
	}
   
   
    @RequestMapping("/isValidUser")
	public String isValidUser(Model model,@RequestParam(value = "id") String name,
			@RequestParam(value = "password") String password) {
		System.out.println("in controller");

		String message="";
		
		if (userDAO.isValidUser(name, password,true)) 
		{
			if(!name.equals("admin")) 
			{
				System.out.println(" Inside UserController.java");
				message = "Valid credentials";
				model.addAttribute("message", message);
				model.addAttribute("name", name); 
				return "redirect:/onLoad";
			}else{
			System.out.println(" Inside UserController.java");
			message = "Valid credentials";
			model.addAttribute("message", message);
			model.addAttribute("name", name); 
			return"adminHome";
			}
		} else {
			model.addAttribute("message", message);
			model.addAttribute("name", name);
			message = "Invalid credentials";
			 return "login";
		}

		
		
	}
	
    
	@RequestMapping("/register2")
	public ModelAndView registerUser2(@ModelAttribute UserDetails userDetails,@RequestParam(value="id") String userID, @RequestParam(value="password") String userPassword) {
		System.out.println(userDetails.getContactNumber());
		System.out.println("obtained id"+userID);
		System.out.println("password"+userPassword);
		User user=new User();
		userDetailsDAO.saveOrUpdate(userDetails);
		user.setId(userID);
		user.setPassword(userPassword);
		user.setAdmin(false);
		userDAO.saveOrUpdate(user);
	  return new ModelAndView("/login");
	 }

    	@RequestMapping(value= "/register", method=RequestMethod.GET)
	public ModelAndView registerUser(UserDetails userDetails) {
    		  return new ModelAndView("/register");
  	 }

}
