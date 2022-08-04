package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bean.User;

@Repository
public interface UserRepository extends JpaRepository<User, String>{
	
	@Query("select r from User r where r.emailid = :emailid and r.password = :password")
	public User checkLoginDetails(@Param("emailid") String emailid, @Param("password") String password);
}
