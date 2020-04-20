package com.mindtree.trainbooking.service;

import com.mindtree.trainbooking.entities.Booking;
import com.mindtree.trainbooking.entities.Train;

public interface BookingService {

	
	public Booking addBooking(Booking booking) ;

	public void saveBooking(int userId, Train train);
	
}
