package com.placement.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.placement.project.model.Student;
import java.util.List;


@Repository
public interface StudentRepository extends JpaRepository<Student,Integer>{
	
	public Student findByIdAndPassword(Long id, String password);
}
