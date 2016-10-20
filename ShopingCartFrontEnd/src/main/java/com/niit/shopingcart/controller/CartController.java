package com.niit.shopingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shopingcart.dao.CartDAO;
import com.niit.shopingcart.dao.CartDAOImpl;
import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.dao.UserDetailsDAOImpl;
import com.niit.shopingcart.model.Cart;
import com.niit.shopingcart.model.Category;
import com.niit.shopingcart.model.Product;
import com.niit.shopingcart.model.Supplier;
import com.niit.shopingcart.model.UserDetails;

@Controller
public class CartController<shipping> {
	
	@Autowired(required=true)
	private CartDAO cartDAO;
	
	@Autowired(required=true)
	private ProductDAO productDAO;
	
	@Autowired(required=true)
	private CategoryDAO categoryDAO;
	
	@RequestMapping(value="/myCart",method=RequestMethod.GET)
	public String myCart(Model model)
	{
		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList", this.cartDAO.list());
	    return "/cart";
	}
	
	//For add and update cart both
	@RequestMapping(value= "/cart/add/{id}", method = RequestMethod.GET)
	public String addToCart(@PathVariable("id") String id){
			
		
	Product product =	 productDAO.get(id);
	Cart cart = new Cart();
	cart.setPrice(product.getPrice());
	cart.setProductName(product.getName());
	cart.setQuantity(1);
	cart.setUserID("user"); // id should keep session and use the same id
	cart.setStatus('N');
	cartDAO.saveOrUpdate(cart);
	
	return "redirect:/myCart";
	}
	
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String listCarts(Model model) {
		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList", this.cartDAO.list());
		return "cart";
	}
	
	@RequestMapping("cart/remove/{id}")
    public String removeCart(@PathVariable("id") int id,ModelMap model) throws Exception{
		
       try {
		cartDAO.delete(id);
		model.addAttribute("message","Successfully removed");
	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/cart";
    }
	
	@RequestMapping("/pay")
	public String pay(Model model)
	{
		int i,s=0,j=0;
		int n=cartDAO.list().size();
		System.out.println(n);
		for(i=0;i<n;i++)
		{
			s=(int) (s+cartDAO.list().get(i).getPrice());
		}
		System.out.println("total money is:"+s);
		model.addAttribute("sum",s);
		while(n!=0)
		{
			cartDAO.delete(cartDAO.list().get(j).getId());
		    n=cartDAO.list().size();
		}
		
		return "paymentDetails";
	}
	@RequestMapping("/final")
	public String last()
	{
		return "success";
	}
	@RequestMapping("/credit")
	public String online()
	{
		return "CreditCard";
		
	}
	@RequestMapping("/ship")
	public String ship(@ModelAttribute shipping ship)
	{
		
		
		return "shipping";
	}
	
    
}
