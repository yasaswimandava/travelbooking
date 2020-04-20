package com.mindtree.trainbooking.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.trainbooking.entities.Booking;
import com.mindtree.trainbooking.entities.User;
import com.mindtree.trainbooking.repository.UserRepository;
import com.mindtree.trainbooking.service.UserService;
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserRepository userRepository;
	
	
	@Override
	public User addUser(User user) {
		User user1 = userRepository.save(user);
		
		return user1;
	}
	
	@Override
	public List<User> getUsers(){
		 List<User> users=userRepository.findAll();
		 return users;
	}
	
	@Override
	public List<Booking> getBooking(int id) {
		return userRepository.findById(id).get().getBookings();
	}

	
}
