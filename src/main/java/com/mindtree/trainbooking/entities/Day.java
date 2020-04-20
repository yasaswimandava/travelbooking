package com.mindtree.trainbooking.entities;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Day {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int dayId;
	private String day;
	@ManyToMany(fetch = FetchType.LAZY,mappedBy = "days")
	private List<Train> trains;

	public int getDayId() {
		return dayId;
	}

	public void setDayId(int dayId) {
		this.dayId = dayId;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	

	public List<Train> getTrains() {
		return trains;
	}

	public void setTrains(List<Train> trains) {
		this.trains = trains;
	}

	public Day() {
	}

}
