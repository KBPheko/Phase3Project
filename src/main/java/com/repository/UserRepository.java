package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bean.User;

@Repository
public interface UserRepository extends JpaRepository<User, String>{
	
	@Query("select u from User u where u.emailid = :emailid and u.password = :password")
	public User checkLoginDetails(@Param("emailid") String emailid, @Param("password") String password);

	//display only list of users by 'customer' role
	@Query("select r from User r where r.role = :role")
	public List<User> checkRegisteredCustomers(@Param("role") String role);
	
	//search user
	//@Query("select s from User s where s.emailid = :emailid")
	@Query("select s from User s where concat(s.fullname, ' ', s.emailid) LIKE %?1%")
	//@Query("select * from User s s.fullname like %:keyword% or s.emailid like %:keyword%")
	public List<User> searchUser(@Param("keyword") String keyword);
}
