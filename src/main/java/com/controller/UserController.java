package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@RequestMapping(value = "/login.jsp")
	public ModelAndView openLoginPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login.jsp");
		return mav;
	}
	
	@RequestMapping(value = "signIn",method = RequestMethod.POST)
	public ModelAndView signIn(HttpServletRequest req, User usr) {
		String emailid = req.getParameter("emailid");
		String password = req.getParameter("password");
		String role = req.getParameter("role");
		
		usr.setEmailid(emailid);
		usr.setPassword(password);
		usr.setRole(role);
		
		String result = us.signIn(usr);
		
		ModelAndView mav = new ModelAndView();
		
		if(result.equals("failure")) {
			mav.addObject("msg", "Incorrect emailid or password");
			mav.setViewName("login.jsp");
		} else if(result.equals("admin success")) {
			mav.addObject("msg", "Welcome to home page admin");
			mav.setViewName("adminDashboard.jsp");
		} else {
			mav.addObject("msg", "Hi, "+usr.getEmailid());
			mav.setViewName("customerDashboard.jsp");
		}
		return mav;
	}
	
	@RequestMapping(value = "signUp", method = RequestMethod.POST)
	public ModelAndView signUp(HttpServletRequest req, User uu) {
		String emailid = req.getParameter("emailid");
		String password = req.getParameter("password");
		String role = req.getParameter("role");
		
		uu.setEmailid(emailid);
		uu.setPassword(password);
		uu.setRole(role);
		
		String result = us.signUp(uu);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", result);
		mav.setViewName("signUp.jsp");
		
		return mav;
	}
}
