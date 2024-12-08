package com.placement.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.placement.project.model.Company;


public interface CompanyRepository extends JpaRepository<Company, String>{
	
	public Company findByEmailAndPassword(String email, String password);
	
}
