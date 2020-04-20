package com.mindtree.trainbooking.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mindtree.trainbooking.dto.SearchDto;
import com.mindtree.trainbooking.entities.Day;
import com.mindtree.trainbooking.entities.Train;
import com.mindtree.trainbooking.entities.User;
import com.mindtree.trainbooking.repository.UserRepository;
import com.mindtree.trainbooking.service.BookingService;
import com.mindtree.trainbooking.service.TrainService;
import com.mindtree.trainbooking.service.UserService;

@Controller
public class BookingController {

	@Autowired
	private TrainService trainService;

	@Autowired
	private BookingService bookingService;
	
	@Autowired
	private UserRepository userService;
	
	private Train train;

	@RequestMapping("/booking")
	public String showBookingPage(Model model) {
		List<Train> trains = trainService.getAllTrains();
		model.addAttribute("trains", trains);
		model.addAttribute("searchDto", new SearchDto());
		return "booking";
	}

	@RequestMapping("/availability")
	public ModelAndView getTrainAvailability(@ModelAttribute("searchDto") SearchDto searchDto) {
		System.out.println(searchDto.toString());
		ModelAndView mav = new ModelAndView("availability");
		List<Train> trains = trainService.getAllTrains();
		List<Train> trains1 = trains.stream()
				.filter(e -> e.getSource().equalsIgnoreCase(searchDto.getSource())
						&& e.getDestination().equalsIgnoreCase(searchDto.getDestination()))
				.collect(Collectors.toList());
		System.out.println(trains1.toString());
		
		
		Map<String, List<Train>> trainList = new HashMap<String, List<Train>>();

		for (Train train : trains1) {
			List<Day> days = train.getDays();
			for (Day day : days) {
				if (trainList.containsKey(day.getDay())) {
					List<Train> trns = trainList.get(day.getDay());
					trns.add(train);
					trainList.replace(day.getDay(), trns);
					System.out.println(trainList.toString());
				} else {
					List<Train> trns = new ArrayList<Train>();
					trns.add(train);
					trainList.put(day.getDay(), trns);
					System.out.println(trainList.toString());
				}

			}

		}

		System.out.println("hii");
		System.out.println(trainList.toString());
		mav.addObject("trainList", trainList);
		return mav;

	}
	
	@RequestMapping("bookticket")
	public String bookingTrain(Model model,@RequestParam int id) {
		train=trainService.getTrainById(id);
		List<User> users=userService.findAll();
		model.addAttribute("users", users);
		return "bookticket";
	}

	@RequestMapping("savebook")
	public String saveBooking(@RequestParam("userId") int userId) {
		
		bookingService.saveBooking(userId, train);
		return "successpage";
		
	}
	
	
}
