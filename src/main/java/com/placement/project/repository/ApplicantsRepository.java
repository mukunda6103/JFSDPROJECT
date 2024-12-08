package com.placement.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.placement.project.model.Applicants;

import jakarta.transaction.Transactional;



@Repository
public interface ApplicantsRepository extends JpaRepository<Applicants, Long> {
	
	public Applicants findByApplicantIdAndJobId(Long applicantId, Long jobId);
	
	public List<Applicants> findByApplicantId(Long applicantId);
	
	public List<Applicants> findByCompanyEmail(String companyEmail);
	
//	@Query("update Applicants a set a.jobStatus=?1 where a.applicantId=?2 and a.jobId=?3")
//	@Modifying
//	@Transactional
//	public int updateapplicantstatus(String status,Long applicantid,Long jobid);
	
	@Query("update Applicants a set a.jobStatus = ?1 where a.applicantId = ?2 and a.jobId = ?3")
	@Modifying
	@Transactional
	public int updateapplicantstatus(String status, Long applicantid, Long jobid);

}
