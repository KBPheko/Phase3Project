package com.service;

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
			Optional<User> res = userRepo.findById(user.getEmailid());
			if(res.isPresent()) {
				return "Email address must be unique. \n Try again with a different email!";
			} else {
				userRepo.save(user);
				return "Success! Sporty Account Created";
			}
		}
	}
	
	public String signIn(User user) {
		User usr = userRepo.checkUsers(user.getEmailid(), user.getPassword());
		if(usr.getRole().equals("admin")) {
			return "admin has logged in";
		} else if(usr.getRole().equals("customer")) {
			return "customer has logged in";
		} else {
			return "failure";
		}
	}
}
