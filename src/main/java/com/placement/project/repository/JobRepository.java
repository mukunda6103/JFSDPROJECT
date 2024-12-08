package com.placement.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.placement.project.model.Jobs;
import java.util.List;


public interface JobRepository extends JpaRepository<Jobs,Long> {
	
	public List<Jobs> findByEmail(String email);
}
