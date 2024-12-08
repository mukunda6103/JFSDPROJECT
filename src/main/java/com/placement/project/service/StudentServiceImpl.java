package com.placement.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.placement.project.model.Applicants;
import com.placement.project.model.Jobs;
import com.placement.project.model.Student;
import com.placement.project.repository.ApplicantsRepository;
import com.placement.project.repository.JobRepository;
import com.placement.project.repository.StudentRepository;

@Service
public class StudentServiceImpl implements  StudentService {
	
	@Autowired
	private ApplicantsRepository applicantsRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private JobRepository jobRepository;

	@Override
	public String insertstudent(Student s) {
		
		studentRepository.save(s);
		
		return "your record inserted into database";
	}
	
	@Override
	public Student checkstudentlogin(Long id, String Password) {
		// TODO Auto-generated method stub
		return studentRepository.findByIdAndPassword(id, Password);
	}

	@Override
	public String insertapplyjob(Applicants applicants) {
		applicantsRepository.save(applicants);
		return "applied successfully";
	}

	@Override
	public List<Jobs> viewalljobs() {
		return jobRepository.findAll();
	}

	

	@Override
	public Applicants findbyapplicantidandjobid(Long applicantid, Long jobid) {
		
		return applicantsRepository.findByApplicantIdAndJobId(applicantid, jobid);
	}

	@Override
	public List<Applicants> findbyapplicantid(Long appid) {
		
		return applicantsRepository.findByApplicantId(appid);
	}

	
}
