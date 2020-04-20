package com.mindtree.trainbooking.service;

import java.util.List;
import java.util.Map;

import com.mindtree.trainbooking.dto.SearchDto;
import com.mindtree.trainbooking.entities.Train;

public interface TrainService {

	
	/**
	 * @return list of train
	 */
	public List<Train> getAllTrains();
	
	/**
	 * @param searchDto
	 * @return map of list of train
	 */
	public Map<String,List<Train>> getTrains(SearchDto searchDto);
	
	/**
	 * @param id
	 * @return train
	 */
	public Train getTrainById(int id);
	
	/**
	 * @return list of train
	 */
	public Map<String,List<Train>> getTrains();
}
