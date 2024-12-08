package com.placement.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.placement.project.model.Admin;
import com.placement.project.model.Company;
import com.placement.project.model.Student;
import com.placement.project.repository.AdminRepository;
import com.placement.project.repository.CompanyRepository;
import com.placement.project.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminSerivce {

	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private CompanyRepository companyRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	
	@Override
	public Admin checkAdminLogin(String username, String password) {
		Admin a = adminRepository.checkAdminLogin(username, password);
		return a;
	}

	@Override
	public String addCompany(Company c) {
		
		companyRepository.save(c);
		return "comapny added to database";
	}

	@Override
	public List<Company> viewallcompanies() {
	
		return companyRepository.findAll();
	}

	@Override
	public List<Student> viewallstudents() {
		
		return studentRepository.findAll();
	}

}
