package com.skilldistillery.oceanlife.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ocean_life")
public class OceanLife {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	@Column( name= "image_url")
	private String imageUrl;
	
	@Column( name= "geographic_location")
	private String location;
	
	@Column( name= "special_abilities")
	private String specialAbilities;
	
	private String size;
	
	private String diet;
	
	private String varieties;
	
	public OceanLife() {
		
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

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getSpecialAbilities() {
		return specialAbilities;
	}

	public void setSpecialAbilities(String specialAbilities) {
		this.specialAbilities = specialAbilities;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getDiet() {
		return diet;
	}

	public void setDiet(String diet) {
		this.diet = diet;
	}

	public String getVarieties() {
		return varieties;
	}

	public void setVarieties(String varities) {
		this.varieties = varities;
	}

	@Override
	public String toString() {
		return "OceanLife [id=" + id + ", name=" + name + ", imageUrl=" + imageUrl + ", location=" + location
				+ ", specialAbilities=" + specialAbilities + ", size=" + size + ", diet=" + diet + ", varities="
				+ varieties + "]";
	}

	
	
}
