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
}
