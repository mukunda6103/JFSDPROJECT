package com.placement.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.placement.project.model.Admin;


@Repository
public interface AdminRepository extends JpaRepository<Admin, String>{
	@Query("select a from Admin a where username=?1 and password=?2")
	public Admin checkAdminLogin(String usernname,String passowrd);
}
