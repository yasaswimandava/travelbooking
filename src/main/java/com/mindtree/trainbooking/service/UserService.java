package com.mindtree.trainbooking.service;

import java.util.List;

import com.mindtree.trainbooking.entities.Booking;
import com.mindtree.trainbooking.entities.User;

public interface UserService {
	
	/**
	 * @param user
	 * @return user
	 */
	public User addUser(User user);

	/**
	 * @return list of user
	 */
	public List<User> getUsers();

	/**
	 * @param id
	 * @return list of booking
	 */
	List<Booking> getBooking(int id);

}
