package com.placement.project.service;

import java.util.List;

import com.placement.project.model.Applicants;
import com.placement.project.model.Company;
import com.placement.project.model.Jobs;

public interface CompanyService {
	public Company checkcompanylogin(String email,String password);
	public String addjob(Jobs j);
	public List<Jobs> viewalljobsbyemail(String email);
	public int updateapplicantstatus(String status,Long applicantid,Long jobid);
	public List<Applicants> findallapplicants(String companyemail);
}

