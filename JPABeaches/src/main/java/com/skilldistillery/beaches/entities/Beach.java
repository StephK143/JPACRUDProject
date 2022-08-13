package com.skilldistillery.beaches.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Beach {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;
	
	private String description;
	
	private int rating;
	
	@Column(name="sand_color")
	private String sandColor;
	
	@Column(name="closest_city")
	private String closestCity;
	
	@Column(name="considered_tropical")
	private boolean consideredTropical;
	
	@Column(name="average_home_price")
	private double avgHomePrice;
	
	@Column(name="miles_to_closest_city")
	private int milesToClosestCity;
	
	@Column(name="population_closest_city")
	private int populationOfClosestCity;
	
	@Column(name="highest_temperature")
	private int highestTemp;
	
	@Column(name="lowest_temperature")
	private int lowestTemp;
	
	@Column(name="government_type")
	private String typeOfGovernment;
	
	@Column(name="image_url")
	private String image;
	
	@Column(name="temperature_average_fall")
	private double avgFallTemp;
	
	@Column(name="temperature_average_winter")
	private double avgWinterTemp;
	
	@Column(name="temperature_average_spring")
	private double avgSpringTemp;
	
	@Column(name="temperature_average_summer")
	private double avgSummerTemp;
	
//	@Column(name="date_created")
//	private DateTime dateCreated;
//	
//	@Column(name="last_updated")
//	private DateTime lastUpdated;
//	
	@Column(name="area_id")
	private String region;
	

	public Beach() {
	}
	
	

	public Beach(String name, String description, int rating, String region) {
		this.name = name;
		this.description = description;
		this.rating = rating;
		this.region = region;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public int getRating() {
		return rating;
	}



	public void setRating(int rating) {
		this.rating = rating;
	}



	public String getSandColor() {
		return sandColor;
	}



	public void setSandColor(String sandColor) {
		this.sandColor = sandColor;
	}



	public String getClosestCity() {
		return closestCity;
	}



	public void setClosestCity(String closestCity) {
		this.closestCity = closestCity;
	}



	public boolean isConsideredTropical() {
		return consideredTropical;
	}



	public void setConsideredTropical(boolean consideredTropical) {
		this.consideredTropical = consideredTropical;
	}



	public double getAvgHomePrice() {
		return avgHomePrice;
	}



	public void setAvgHomePrice(double avgHomePrice) {
		this.avgHomePrice = avgHomePrice;
	}



	public int getMilesToClosestCity() {
		return milesToClosestCity;
	}



	public void setMilesToClosestCity(int milesToClosestCity) {
		this.milesToClosestCity = milesToClosestCity;
	}



	public int getPopulationOfClosestCity() {
		return populationOfClosestCity;
	}



	public void setPopulationOfClosestCity(int populationOfClosestCity) {
		this.populationOfClosestCity = populationOfClosestCity;
	}



	public int getHighestTemp() {
		return highestTemp;
	}



	public void setHighestTemp(int highestTemp) {
		this.highestTemp = highestTemp;
	}



	public int getLowestTemp() {
		return lowestTemp;
	}



	public void setLowestTemp(int lowestTemp) {
		this.lowestTemp = lowestTemp;
	}



	public String getTypeOfGovernment() {
		return typeOfGovernment;
	}



	public void setTypeOfGovernment(String typeOfGovernment) {
		this.typeOfGovernment = typeOfGovernment;
	}



	public String getImage() {
		return image;
	}



	public void setImage(String image) {
		this.image = image;
	}



	public double getAvgFallTemp() {
		return avgFallTemp;
	}



	public void setAvgFallTemp(double avgFallTemp) {
		this.avgFallTemp = avgFallTemp;
	}



	public double getAvgWinterTemp() {
		return avgWinterTemp;
	}



	public void setAvgWinterTemp(double avgWinterTemp) {
		this.avgWinterTemp = avgWinterTemp;
	}



	public double getAvgSpringTemp() {
		return avgSpringTemp;
	}



	public void setAvgSpringTemp(double avgSpringTemp) {
		this.avgSpringTemp = avgSpringTemp;
	}



	public double getAvgSummerTemp() {
		return avgSummerTemp;
	}



	public void setAvgSummerTemp(double avgSummerTemp) {
		this.avgSummerTemp = avgSummerTemp;
	}



	public String getRegion() {
		return region;
	}



	public void setRegion(String region) {
		this.region = region;
	}



	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Beach [name=");
		builder.append(name);
		builder.append(", description=");
		builder.append(description);
		builder.append(", rating=");
		builder.append(rating);
		builder.append(", sandColor=");
		builder.append(sandColor);
		builder.append(", closestCity=");
		builder.append(closestCity);
		builder.append(", region=");
		builder.append(region);
		builder.append("]");
		return builder.toString();
	}

	


	



}
