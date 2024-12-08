package com.placement.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;

import com.placement.project.model.Admin;
import com.placement.project.model.Company;
import com.placement.project.model.Student;
import com.placement.project.service.AdminSerivce;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController 
{
	@Autowired
	private AdminSerivce adminSerivce;
	
	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		
		Admin a = adminSerivce.checkAdminLogin(request.getParameter("username"), request.getParameter("password"));
		
		
		
		session.setAttribute("admin", a);
		
		if(a!=null) {
			mv.setViewName("adminhome");
			return mv;
		}else {
			mv.setViewName("adminlogin");
			mv.addObject("message","login failed");
			return mv;
		}
		
	}
	
	@GetMapping("adminlogout")
	public ModelAndView adminlogout(HttpServletRequest request) 
	{
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		session.removeAttribute("admin");
		
		
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("adminsessionexpiry")
	public ModelAndView aadminsessionexpiry() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminsessionexpiry");
		return mv;
	}
	
	@GetMapping("addcompany")
	public String addcompany(Model m) {
		m.addAttribute("company", new Company());
		return "addcompany";
	}
	
	@PostMapping("insertcompany")
	public ModelAndView insertcompany(@ModelAttribute("company") Company c) {
		
		String msg = adminSerivce.addCompany(c);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("companyregsuccess");
		mv.addObject("message", msg);
		return mv;
	}
	
	@GetMapping("viewallcompanies")
	public ModelAndView viewallcompanies()
	{
		ModelAndView mv = new ModelAndView();
		List<Company> company = adminSerivce.viewallcompanies();
		mv.setViewName("adminviewallcompanies");
		mv.addObject("companylist", company);
		return mv;
	}
	
	@GetMapping("viewallstudents")
	public ModelAndView viewallstudents()
	{
		ModelAndView mv = new ModelAndView();
		List<Student> student = adminSerivce.viewallstudents();
		mv.setViewName("adminviewallstudents");
		mv.addObject("studentlist", student);
		return mv;
	}
	
	
}
