package com.mindtree.trainbooking.dto;

public class SearchDto {

	private String source;
	private String destination;

	public SearchDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	@Override
	public String toString() {
		return "SearchDto [source=" + source + ", destination=" + destination + "]";
	}
	
}
