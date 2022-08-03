package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bean.User;

@Repository
public interface UserRepository extends JpaRepository<User, String>{
	
	@Query("select u from User u where u.emailid = :emailid and u.password = :password")
	public User checkUsers(@Param("emailid") String emailid, @Param("password") String password);
}
