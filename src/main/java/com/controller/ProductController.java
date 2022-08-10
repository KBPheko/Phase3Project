package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	@RequestMapping(value = "displayAllProduct",method = RequestMethod.GET)
	public ModelAndView getAllProduct() {
		List<Product> listOfProduct = productService.findAllProduct();
		ModelAndView mav = new ModelAndView();
		mav.addObject("listOfProduct", listOfProduct);
		mav.setViewName("viewProducts.jsp");
		
		return mav;
	}
	
	@RequestMapping(value = "displaySearch",method = RequestMethod.GET)
	public ModelAndView getProductByCategory(HttpServletRequest req) {
		String keyword = req.getParameter("keyword");
		
		List<Product> listOfSearchResults = productService.findProductByCategory(keyword);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("listOfFilteredProduct", listOfSearchResults);
		mav.setViewName("viewProducts.jsp");
		
		return mav;
	}
	
	//update product
	public ModelAndView updateProduct(HttpServletRequest req, int pid) {
		Product prod = productService.get(pid);
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
}
