package com.placement.project.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="Student")
public class Student {
	@Id
	@Column(name="student_id")
	private Long id;
	
	@Column(name="name",nullable=false,length=50)
	private String name;
	
	@Column(name="gender",nullable=false,length=10)
	private String gender;
	
	@Column(name="dob",nullable=false,length=10)
	private String dob;
	
	@Column(name="email",nullable=false,length=100)
	private String email;
	
	@Column(name="contact",nullable=false,length=10)	
	private String contact;
	
	@Column(name="password",nullable=false,length=20)
	private String password;
	
	@Column(name="department", nullable=false, length=50)
	private String department;
	
	// Getter and Setter methods
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getGender() {
		return gender;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getDob() {
		return dob;
	}
	
	public void setDob(String dob) {
		this.dob = dob;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getContact() {
		return contact;
	}
	
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getDepartment() {
		return department;
	}
	
	public void setDepartment(String department) {
		this.department = department;
	}
}
