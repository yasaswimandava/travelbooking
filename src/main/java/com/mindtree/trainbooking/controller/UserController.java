package com.mindtree.trainbooking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mindtree.trainbooking.dto.ErrorDto;
import com.mindtree.trainbooking.entities.Booking;
import com.mindtree.trainbooking.entities.User;
import com.mindtree.trainbooking.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/")
	public String HomePage() {
		return "index1";
	}
	
	@RequestMapping("/register")
	public String userRegistrationPage(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "register";
	}
	@RequestMapping("/userlogin")
	public String nextpage(Model model,@ModelAttribute(name="user")User user) {
		return "userlogin";
	}
	@RequestMapping("/login")
	public String userLoginPage(Model model,@ModelAttribute User user) {
		
		List<User> users=userService.getUsers();
		for(User u: users) {
			if(u.getUserName().equals(user.getUserName())&&u.getPassword().equals(user.getPassword())) {
				return "index";
			}
		else {
			 model.addAttribute("error", new ErrorDto("invalid user and password"));
			return "userlogin";
		}
//			return "login";
		}
		return "errorpage";
	}
	@RequestMapping("/save")
	public String addUser(Model model,@ModelAttribute(name="user")User user) {
		
		userService.addUser(user);
		
		return "index";
	}
	
	@RequestMapping("/home")
	public String indexpage() {
		return "index";
	}
	@RequestMapping("travelhistory")
	public String showHistory(Model model) {
		
		model.addAttribute("users", userService.getUsers());
		return "travelhistory";
	}
	
	@RequestMapping("getdetails")
	public ModelAndView getBooking(@RequestParam("userId") int id) {
		ModelAndView mav = new ModelAndView("travelhistory");
		List<User> users =userService.getUsers();
		mav.addObject("users", users);
		List<Booking> bookings = userService.getBooking(id);
			mav.addObject("bookings", bookings);
			return mav;

	}
}
