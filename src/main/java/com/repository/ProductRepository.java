package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bean.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

	//sort by product name, color, brand, and category
	@Query("select p from Product p where concat(p.category, ' ', p.color, ' ', p.brand, ' ', p.pname) LIKE %?1%")
	public List<Product> findProductByCategory(@Param("keyword") String keyword);
	
	//display only women category
	@Query("select w from Product w where w.category = :category")
	public List<Product> displayWomen(@Param("category") String category);
	
}
