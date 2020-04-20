package com.mindtree.trainbooking.service.impl;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.trainbooking.dto.SearchDto;
import com.mindtree.trainbooking.entities.Day;
import com.mindtree.trainbooking.entities.Train;
import com.mindtree.trainbooking.repository.TrainRepository;
import com.mindtree.trainbooking.service.TrainService;
@Service
public class TrainServiceImpl implements TrainService{

	
	@Autowired
	private TrainRepository trainRepository;
	@Override
	public List<Train> getAllTrains() {

		List<Train> trains= trainRepository.findAll();
		
		return trains;
	}
	
	@Override
	public Map<String, List<Train>> getTrains(SearchDto searchDto) {

		List<Train> trains=trainRepository.findAll();
		
				List<Train>trains1=trains.stream()
				.filter(e->e.getSource().equalsIgnoreCase(searchDto.getSource())
				&&e.getDestination().equalsIgnoreCase(searchDto.getDestination()))
				.collect(Collectors.toList());
		
		Map<String,List<Train>> trainList=new HashMap<String, List<Train>>();
		
		for (Train train : trains1) {
			List<Day> days=train.getDays();
			for (Day day : days) {
				if(trainList.containsKey(day.getDay())){
					List<Train> trns=trainList.get(day.getDay());
					trns.add(train);
					trainList.replace(day.getDay(),trns);
				}
				else
				{
					List<Train> trns=new ArrayList<Train>();
					trns.add(train);

					trainList.put(day.getDay(),trns);
				}
				
			}
			
		}
		
		return trainList;
		
		
	}
	@Override
	public Train getTrainById(int id) {

		
		Train train= trainRepository.findById(id).get();
		
		return train;
	}
	@Override
	public Map<String, List<Train>> getTrains() {

		Map<String,List<Train>> trainList=new HashMap<String, List<Train>>();
		for (Train train : trainRepository.findAll()) {
			String str=train.getSource()+"-->"+train.getDestination();
				if(trainList.containsKey(str)) {
					List<Train> trns=trainList.get(str);
					trns.add(train);
					trainList.replace(str,trns);
				}
				else
				{
					List<Train> trns=new ArrayList<Train>();
					trns.add(train);
					trainList.put(str,trns);
				}
				
			}
		
		return trainList;
	}

}
