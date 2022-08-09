package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Product;
import com.repository.ProductRepository;

@Service
public class ProductService {

	@Autowired
	ProductRepository productRepository;
	
	public String storeProduct(Product product) {
		productRepository.save(product);
		return "Product stored successfully";
	}
	
	public List<Product> findAllProduct(){
		return productRepository.findAll();
	}
	
	public List<Product> findProductByCategory(String category){
		if(category != null) {
			return productRepository.findProductByCategory(category);
		}
		return productRepository.findAll();
	}
}
