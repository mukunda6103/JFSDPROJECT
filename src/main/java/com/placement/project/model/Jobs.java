package com.placement.project.model;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;

@Entity
@Table(name="Jobs")
public class Jobs 
{
	
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="JobId")
    private Long jobId;

    @Column(name="Title", nullable=false, length=100)
    private String title;

    @Column(name="Description", nullable=false, length=255)
    private String description;

    @Column(name="Experience", nullable=false)
    private Integer experience;
    
    @Column(name="Skills", length=255)
    private String skills;


    @Column(name="CompanyName", nullable=false)
    private String companyname;
    
    
    @Column(name="EmploymentType", nullable=false, length=50) // full time or parttime
    private String employmentType;

    @Column(name="Role", nullable=false, length=100)
    private String role;

    @Column(name="Location", nullable=false, length=100)
    private String location;

    @Column(name="Salary", nullable=false)
    private Long salary;

    @Column(name="JobType", nullable=false, length=50)
    private String jobType;

    @Column(name="EducationQualifications", nullable=false, length=100)
    private String educationQualifications;

    @Column(name="Requirements", nullable=false, length=255)
    private String requirements;

    @Column(name="Email", nullable=false, length=100)
    private String email;

    @Column(name="Deadline", nullable=false, length=100)
    private String deadline;

    @Column(name="PostedTime", nullable=false, length=20)
    private String postedTime;

    @PrePersist
    protected void onCreate() {
        this.postedTime = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
    }

    // Getters and Setters

    public Long getJobId() {
        return jobId;
    }

    public void setJobId(Long jobId) {
        this.jobId = jobId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

   

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Long getSalary() {
        return salary;
    }

    public void setSalary(Long salary) {
        this.salary = salary;
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
    }

    public String getEducationQualifications() {
        return educationQualifications;
    }

    public void setEducationQualifications(String educationQualifications) {
        this.educationQualifications = educationQualifications;
    }

    public String getRequirements() {
        return requirements;
    }

    public void setRequirements(String requirements) {
        this.requirements = requirements;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public String getPostedTime() {
        return postedTime;
    }

    public void setPostedTime(String postedTime) {
        this.postedTime = postedTime;
    }

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public Integer getExperience() {
		return experience;
	}

	public void setExperience(Integer experience) {
		this.experience = experience;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	public String getEmploymentType() {
		return employmentType;
	}

	public void setEmploymentType(String employmentType) {
		this.employmentType = employmentType;
	}

}
