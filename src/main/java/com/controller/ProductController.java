package com.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Product;
import com.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;
	
	@RequestMapping(value = "storeProduct",method = RequestMethod.POST)
	public ModelAndView storeProduct(HttpServletRequest req, Product product) {
		
		String pname = req.getParameter("pname");
		String category = req.getParameter("category");
		String brand = req.getParameter("brand");
		float price = Float.parseFloat(req.getParameter("price"));
		String imageurl = req.getParameter("imageurl");
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		int size = Integer.parseInt(req.getParameter("size"));
		String color = req.getParameter("color");
		
		product.setPname(pname);
		product.setCategory(category);
		product.setBrand(brand);
		product.setPrice(price);
		product.setImageurl(imageurl);
		product.setQuantity(quantity);
		product.setSize(size);
		product.setColor(color);
		
		String result = productService.storeProduct(product);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("storeProduct.jsp");
		mav.addObject("msg", result);
		
		return mav;
	}
	
	//Admin Dashboard
	@RequestMapping(value = "displayAllProduct",method = RequestMethod.GET)
	public ModelAndView getAllProduct() {
		List<Product> listOfProduct = productService.findAllProduct();
		ModelAndView mav = new ModelAndView();
		mav.addObject("listOfProduct", listOfProduct);
		mav.setViewName("viewProducts.jsp");
		
		return mav;
	}
	
	//Admin dashboard
		@RequestMapping(value = "displaySearch",method = RequestMethod.GET)
		public ModelAndView getProductByCategory(HttpServletRequest req) {
			String keyword = req.getParameter("keyword");
			
			List<Product> listOfSearchResults = productService.findProductByCategory(keyword);
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("listOfFilteredProduct", listOfSearchResults);
			mav.setViewName("viewProducts.jsp");
			
			return mav;
		}
	
	//display products to customers
	@RequestMapping(value = "displayProductCatalogue")
	public ModelAndView loadProducts() {
		List<Product> listOfProduct = productService.findAllProduct();
		ModelAndView mav = new ModelAndView();
		mav.addObject("listOfProduct", listOfProduct);
		mav.setViewName("customerDashboard.jsp");
		
		return mav;
	}
	
	//customer dashboard
	@RequestMapping(value = "/customerDashboard.jsp")
	public ModelAndView displayCatalogue() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("customerDashboard.jsp");
		return mav;
	}
	
	//Customer Dashboard
	@RequestMapping(value = "displayUserSearch",method = RequestMethod.GET)
	public ModelAndView displayByUserSearch(HttpServletRequest req) {
		String usersearch = req.getParameter("userinput");
		
		List<Product> userSearchresults = productService.findProductByCategory(usersearch);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("userSearchResults", userSearchresults);
		mav.setViewName("customerDashboard.jsp");
		
		return mav;
	}
	
	//Admin Dashboard
	//Edit product
	@RequestMapping(value = "editProduct",method = RequestMethod.POST)
	public ModelAndView updateProduct(HttpServletRequest req, Product prod) {
		int pid = Integer.parseInt(req.getParameter("pid"));
		String brand = req.getParameter("brand");
		String color = req.getParameter("color");
		int size = Integer.parseInt(req.getParameter("size"));
		float price = Float.parseFloat(req.getParameter("price"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		
		prod.setPid(pid);
		prod.setBrand(brand);
		prod.setColor(color);
		prod.setSize(size);
		prod.setPrice(price);
		prod.setQuantity(quantity);
		
		String res = productService.updateProduct(prod);
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", res);
		mav.setViewName("editProduct.jsp");
		
		return mav;
	}
	
	@RequestMapping(value = "delete/{id}",method = RequestMethod.GET)
	public ModelAndView deleteProduct(@PathVariable("id") int id) {
	    productService.delete(id);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("viewProducts.jsp");
		return mav;
	}
}
