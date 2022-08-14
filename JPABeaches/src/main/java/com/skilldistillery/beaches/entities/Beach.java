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

	private Double rating;

	@Column(name = "sand_color")
	private String sandColor;

	@Column(name = "closest_city")
	private String closestCity;

	@Column(name = "considered_tropical")
	private Boolean consideredTropical;

	@Column(name = "average_home_price")
	private Double avgHomePrice;

	@Column(name = "miles_to_closest_city")
	private Integer milesToClosestCity;

	@Column(name = "population_closest_city")
	private Integer populationOfClosestCity;

	@Column(name = "highest_temperature")
	private Double highestTemp;

	@Column(name = "lowest_temperature")
	private Double lowestTemp;

	@Column(name = "government_type")
	private String typeOfGovernment;

	@Column(name = "image_url")
	private String image;

	@Column(name = "temperature_average_fall")
	private Double avgFallTemp;

	@Column(name = "temperature_average_winter")
	private Double avgWinterTemp;

	@Column(name = "temperature_average_spring")
	private Double avgSpringTemp;

	@Column(name = "temperature_average_summer")
	private Double avgSummerTemp;

//	@Column(name="date_created")
//	private DateTime dateCreated;
//	
//	@Column(name="last_updated")
//	private DateTime lastUpdated;
//	
	@Column(name = "area_id")
	private Integer region;

	public Beach() {
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

	public Double getRating() {
		return rating;
	}

	public void setRating(Double rating) {
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

	public Boolean getConsideredTropical() {
		return consideredTropical;
	}

	public void setConsideredTropical(Boolean consideredTropical) {
		this.consideredTropical = consideredTropical;
	}

	public Double getAvgHomePrice() {
		return avgHomePrice;
	}

	public void setAvgHomePrice(Double avgHomePrice) {
		this.avgHomePrice = avgHomePrice;
	}

	public Integer getMilesToClosestCity() {
		return milesToClosestCity;
	}

	public void setMilesToClosestCity(Integer milesToClosestCity) {
		this.milesToClosestCity = milesToClosestCity;
	}

	public Integer getPopulationOfClosestCity() {
		return populationOfClosestCity;
	}

	public void setPopulationOfClosestCity(Integer populationOfClosestCity) {
		this.populationOfClosestCity = populationOfClosestCity;
	}

	public Double getHighestTemp() {
		return highestTemp;
	}

	public void setHighestTemp(Double highestTemp) {
		this.highestTemp = highestTemp;
	}

	public Double getLowestTemp() {
		return lowestTemp;
	}

	public void setLowestTemp(Double lowestTemp) {
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

	public Double getAvgFallTemp() {
		return avgFallTemp;
	}

	public void setAvgFallTemp(Double avgFallTemp) {
		this.avgFallTemp = avgFallTemp;
	}

	public Double getAvgWinterTemp() {
		return avgWinterTemp;
	}

	public void setAvgWinterTemp(Double avgWinterTemp) {
		this.avgWinterTemp = avgWinterTemp;
	}

	public Double getAvgSpringTemp() {
		return avgSpringTemp;
	}

	public void setAvgSpringTemp(Double avgSpringTemp) {
		this.avgSpringTemp = avgSpringTemp;
	}

	public Double getAvgSummerTemp() {
		return avgSummerTemp;
	}

	public void setAvgSummerTemp(Double avgSummerTemp) {
		this.avgSummerTemp = avgSummerTemp;
	}

	public Integer getRegion() {
		return region;
	}

	public void setRegion(Integer region) {
		this.region = region;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Beach [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", description=");
		builder.append(description);
		builder.append(", rating=");
		builder.append(rating);
		builder.append(", sandColor=");
		builder.append(sandColor);
		builder.append(", closestCity=");
		builder.append(closestCity);
		builder.append(", consideredTropical=");
		builder.append(consideredTropical);
		builder.append(", avgHomePrice=");
		builder.append(avgHomePrice);
		builder.append(", milesToClosestCity=");
		builder.append(milesToClosestCity);
		builder.append(", populationOfClosestCity=");
		builder.append(populationOfClosestCity);
		builder.append(", highestTemp=");
		builder.append(highestTemp);
		builder.append(", lowestTemp=");
		builder.append(lowestTemp);
		builder.append(", typeOfGovernment=");
		builder.append(typeOfGovernment);
		builder.append(", image=");
		builder.append(image);
		builder.append(", avgFallTemp=");
		builder.append(avgFallTemp);
		builder.append(", avgWinterTemp=");
		builder.append(avgWinterTemp);
		builder.append(", avgSpringTemp=");
		builder.append(avgSpringTemp);
		builder.append(", avgSummerTemp=");
		builder.append(avgSummerTemp);
		builder.append(", region=");
		builder.append(region);
		builder.append("]");
		return builder.toString();
	}

	
}
