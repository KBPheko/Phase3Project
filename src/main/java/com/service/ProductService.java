package com.service;

import java.util.List;
import java.util.Optional;

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
	
	public Product get(int pid) {
		return productRepository.findById(pid).get();
	}
	
	public String updateProduct(Product product) {
		Optional<Product> result = productRepository.findById(product.getPid());
		if(result.isPresent()) {
			Product p= result.get();

			p.setBrand(product.getBrand());
			p.setColor(product.getColor());
			p.setSize(product.getSize());
			p.setPrice(product.getPrice());
			p.setQuantity(product.getQuantity());
			
			productRepository.saveAndFlush(p);
			return "Product details updated successfully";
		} else {
			return "Product didn't update";
		}
	}
	
	public void delete(int pid) {
		productRepository.deleteById(pid);
	}
}
