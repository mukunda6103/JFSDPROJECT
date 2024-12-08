package com.placement.project.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="Company")
public class Company {
	
	@Id
	@Column(name="Email",nullable=false,length=20)
	private String email;
	
	@Column(name="Name",nullable=false,length=20)
	private String name;
	
	@Column(name="Field",nullable=false,length=20)
	private String field;
	
	@Column(name="Location")
	private String location;
	
	@Column(name="Password",nullable=false,length=20)
	private String password;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
