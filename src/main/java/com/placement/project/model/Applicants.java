package com.placement.project.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "applicants")
public class Applicants {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String jobSeekerEmail;
    
    @Column(nullable = false)
    private String companyname;
    

    @Column(nullable = false)
    private Long applicantId;
    
    @Column(nullable = false)
    private Long jobId;

    @Column(nullable = false)
    private String jobStatus;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(nullable = false)
    private Date appliedTime;

    @Column(nullable = false) 
    private String companyEmail;
    
    @Column(nullable = false)
    private String applicationstatus;
    
    

    
    
    @PrePersist
    protected void onCreate() {
        appliedTime = new Date();
        
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getJobSeekerEmail() {
        return jobSeekerEmail;
    }

    public void setJobSeekerEmail(String jobSeekerEmail) {
        this.jobSeekerEmail = jobSeekerEmail;
    }

    public Long getApplicantId() {
        return applicantId;
    }

    public void setApplicantId(Long applicantId) {
        this.applicantId = applicantId;
    }

    public String getJobStatus() {
        return jobStatus;
    }

    public void setJobStatus(String jobStatus) {
        this.jobStatus = jobStatus;
    }

    public Date getAppliedTime() {
        return appliedTime;
    }

    public void setAppliedTime(Date appliedTime) {
        this.appliedTime = appliedTime;
    }

    public String getCompanyEmail() {
        return companyEmail;
    }

    public void setCompanyEmail(String companyEmail) {
        this.companyEmail = companyEmail;
    }

	public Long getJobId() {
		return jobId;
	}

	public void setJobId(Long jobId) {
		this.jobId = jobId;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getApplicationstatus() {
		return applicationstatus;
	}

	public void setApplicationstatus(String applicationstatus) {
		this.applicationstatus = applicationstatus;
	}
}
