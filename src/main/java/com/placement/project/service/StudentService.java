package com.placement.project.service;

import java.util.List;

import com.placement.project.model.Applicants;
import com.placement.project.model.Jobs;
import com.placement.project.model.Student;

public interface StudentService {
	
	public String insertstudent(Student s);
	
	public Student checkstudentlogin(Long id,String Password);
	
	public List<Jobs> viewalljobs();
	
	public String insertapplyjob(Applicants applicants);
	
	public Applicants findbyapplicantidandjobid(Long applicantid,Long jobid);
	
	public List<Applicants> findbyapplicantid(Long appid);
}
