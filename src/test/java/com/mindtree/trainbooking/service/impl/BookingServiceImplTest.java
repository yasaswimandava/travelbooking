package com.mindtree.trainbooking.service.impl;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.when;

import org.junit.Before;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.mindtree.trainbooking.controller.BookingController;
import com.mindtree.trainbooking.entities.Booking;
import com.mindtree.trainbooking.service.BookingService;


@RunWith(MockitoJUnitRunner.class)
@WebMvcTest(BookingController.class)
class BookingServiceImplTest {

	
	@InjectMocks
	private BookingController bookController;

	@Mock
	private BookingService bookService;
	
	
	@Autowired
	private MockMvc mockMvc;
	
	
	@Before
	public void setUp()
	{
	MockitoAnnotations.initMocks(this);
	mockMvc = MockMvcBuilders.standaloneSetup(bookController).build();
	}
	
	
	@Test
	public void TestAddBooking() {
		Booking b = new Booking();
		b.setBookingId(1);
		when(bookService.addBooking(b)).thenReturn(b);
		assertEquals(b, b);
	}
	
	
	
	
}
