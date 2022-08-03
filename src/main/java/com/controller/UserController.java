package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.User;
import com.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService us;
	
	@RequestMapping(value = "/")
	public ModelAndView openWelcomePage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index.jsp");
		return mav;
	}
	
//	@RequestMapping(value = "")
//	public ModelAndView openLoginPage() {
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("login.jsp");
//		return mav;
//	}
	
	public ModelAndView signIn(HttpServletRequest req, User u) {
		String emailid = req.getParameter("emailid");
		String fullname = req.getParameter("fullname");
		String password = req.getParameter("password");
		String role = req.getParameter("role");
		
		u.setEmailid(emailid);
		u.setFullname(fullname);
		u.setPassword(password);
		u.setRole(role);
		
		String result = us.signIn(u);
		
		ModelAndView mav = new ModelAndView();
		
		if(result.equals("failure")) {
			mav.addObject("msg", "Incorrect email or password");
			mav.setViewName("login.jsp");
		} else if(result.equals("admin has logged in")) {
			mav.setViewName("adminDashboard.jsp");
		} else {
			mav.setViewName("customerDashboard.jsp");
		}
		return mav;
	}
}
