package com.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.User;
import com.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	UserRepository userRepo;
	
	public String signUp(User user) {
		if(user.getRole().equals("admin")) {
			return "Can't Register Admin Role. Admin details already assigned";
		} else {
			Optional<User> result = userRepo.findById(user.getEmailid());
			if(result.isPresent()) {
				return "Email address must be unique. \n Try again with a different email!";
			} else {
				userRepo.save(user);
				return "Success! Sporty Account Created";
			}
		}
	}
	
	public String signIn(User user) {
		User usr = userRepo.checkLoginDetails(user.getEmailid(), user.getPassword());
		if(usr == null) {
			return "failure";
		} else if(usr.getRole().equals("admin")) {
			return "admin success";
		} else {
			return "customer success";
		}
	}
	
	//return customers
	public List<User> displayAllRegisteredUsers(String roleName){
		List<User> listOfRegCustomers = userRepo.checkRegisteredCustomers(roleName);
		
		return  listOfRegCustomers;
		
	}
	
	//return searched user
	public List<User> searchUser(String keyword) {
		if(keyword != null) {
			return userRepo.searchUser(keyword);
		}
		return userRepo.findAll();
	}
	
	//update password
	public String updatePassword(User user) {
		Optional<User> res = userRepo.findById(user.getEmailid()); //unique identification
		if(res.isPresent()) {
			User u = res.get();
			u.setPassword(user.getPassword());
			userRepo.saveAndFlush(u);
			return "Password updated!";
		} else {
			return "No such emailid";
		}
	}
	
}
