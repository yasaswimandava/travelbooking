package com.mindtree.trainbooking.service.impl;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.trainbooking.entities.Booking;
import com.mindtree.trainbooking.entities.Train;
import com.mindtree.trainbooking.repository.BookingRepository;
import com.mindtree.trainbooking.repository.UserRepository;
import com.mindtree.trainbooking.service.BookingService;
@Service
public class BookingServiceImpl implements BookingService{

	@Autowired
	private BookingRepository bookingRepository;
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public Booking addBooking(Booking booking) {

		Booking booking1=bookingRepository.save(booking);
	
		
		return booking1;
	}
	
	@Override
	public void saveBooking(int userId, Train train) {
		Booking book=new Booking();
		book.setUser(userRepository.findById(userId).get());
		book.setDate(LocalDate.now());
		book.setTrain(train);
		bookingRepository.save(book);
	}

}
