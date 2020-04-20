package com.mindtree.trainbooking.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mindtree.trainbooking.dto.SearchDto;
import com.mindtree.trainbooking.entities.Train;
import com.mindtree.trainbooking.service.TrainService;

@Controller
public class TrainController {

	@Autowired
	private TrainService trainService;
	
	@RequestMapping("/checktrain")
	public String checkTrainList(@ModelAttribute("searchDto") SearchDto searchDto,Model model) {
		Map<String,List<Train>> trains=trainService.getTrains();
		System.out.println(trains.toString());
		model.addAttribute("trains", trains);
		return "checktrain";
		
	}
}
