package com.placement.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.placement.project.model.Admin;
import com.placement.project.model.Company;
import com.placement.project.model.Student;

@Service
public interface AdminSerivce {
	public Admin checkAdminLogin(String username,String password);
	public String addCompany(Company c);
	public List<Company> viewallcompanies();
	public List<Student> viewallstudents();
}
