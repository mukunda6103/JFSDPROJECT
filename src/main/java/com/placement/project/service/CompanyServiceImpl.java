package com.placement.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.placement.project.model.Applicants;
import com.placement.project.model.Company;
import com.placement.project.model.Jobs;
import com.placement.project.repository.ApplicantsRepository;
import com.placement.project.repository.CompanyRepository;
import com.placement.project.repository.JobRepository;

@Service
public class CompanyServiceImpl implements CompanyService {
	
	
	@Autowired
	private ApplicantsRepository applicantsRepository;

	@Autowired
	private CompanyRepository companyRepository;
	
	@Autowired
	private JobRepository jobRepository;
	
	@Override
	public Company checkcompanylogin(String email, String password) {
		
		Company c = companyRepository.findByEmailAndPassword(email, password);
		return c;
		
		
	}

	@Override
	public String addjob(Jobs j) {
		jobRepository.save(j);
		return "job added to database";
	}

	@Override
	public List<Jobs> viewalljobsbyemail(String email) {
		return jobRepository.findByEmail(email);
	}

	@Override
	public int updateapplicantstatus(String status, Long applicantid, Long jobid) {
		
		return applicantsRepository.updateapplicantstatus(status, applicantid, jobid);
	}

	@Override
	public List<Applicants> findallapplicants(String companyemail) {
		
		return applicantsRepository.findByCompanyEmail(companyemail);
	}

}
