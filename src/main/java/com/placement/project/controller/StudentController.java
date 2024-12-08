package com.placement.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.placement.project.model.Applicants;
import com.placement.project.model.Jobs;
import com.placement.project.model.Student;
import com.placement.project.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
public class StudentController {
	
	
	@Autowired
	private StudentService studentService;
	
	
	@GetMapping("studenthome")
	public ModelAndView studenthome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studenthome");
		return mv;
	}
	
	
	@GetMapping("addstudent")
	public ModelAndView addstudent()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addstudent");
		return mv;
	}
	
	@PostMapping("insertstudent")
	public ModelAndView insertstudent(HttpServletRequest request)
	{
		Student student = new Student();
		student.setId(Long.parseLong(request.getParameter("regnum")));
		student.setName(request.getParameter("sname"));
		student.setGender(request.getParameter("gender"));
		student.setDob(request.getParameter("dob"));
		student.setEmail(request.getParameter("semail"));
		student.setContact(request.getParameter("scontact"));
		student.setPassword(request.getParameter("pwd"));
		student.setDepartment(request.getParameter("dept"));
		
		String msg = studentService.insertstudent(student);
		
		ModelAndView mv = new ModelAndView("studentregsuccess");
	       mv.addObject("message", msg);
	     
	       return mv;
	}
	
	@GetMapping("studentlogin")
	public ModelAndView studentlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentlogin");
		return mv;
	}
	
	@PostMapping("checkstudentlogin")
	public ModelAndView checkstudentlogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		Student st = studentService.checkstudentlogin(Long.parseLong(request.getParameter("studentid")),request.getParameter("studentpassword"));
		session.setAttribute("student",st);
		if(st!=null) {
			mv.setViewName("studenthome");
			return mv;
		}else {
			mv.setViewName("studentlogin");
			mv.addObject("message","login failed");
			return mv;
		}
		
		
	}
	
	
	
	@GetMapping("studentviewalljobs")
	public ModelAndView viewalljobs()
	{
		ModelAndView mv = new ModelAndView();
		List<Jobs> jobs = studentService.viewalljobs();
		mv.setViewName("studentviewalljobs");
		mv.addObject("jobslist", jobs);
		return mv;
	}
	
	@GetMapping("applyjob")
	public ModelAndView applyjob(HttpServletRequest request, @RequestParam("companymail") String companymail,@RequestParam("jobid") Long jobid,
			@RequestParam("companyname") String companyname)
	{
		HttpSession session = request.getSession();
		Student st = (Student) session.getAttribute("student");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentappliednotification");
		
		Applicants ap = studentService.findbyapplicantidandjobid(st.getId(), jobid);
		
		Applicants applicants = new Applicants();
		
		if(ap==null) {
			applicants.setApplicantId(st.getId());
			applicants.setCompanyEmail(companymail);
			applicants.setJobStatus("registered");
			applicants.setJobSeekerEmail(st.getEmail());
			applicants.setApplicationstatus("registered");
			applicants.setJobId(jobid);
			applicants.setCompanyname(companyname);
			String msg = studentService.insertapplyjob(applicants);
			mv.addObject("message",msg);
			System.out.println(msg);
		}else {
			mv.addObject("message", "already applied");
		}
		
		return mv;
	}
	
	@GetMapping("studentlogout")
	public ModelAndView studentlogout(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		session.removeAttribute("student");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentlogin");
		return mv;
		
	}
	@GetMapping("studentviewappliedjobs")
	  public ModelAndView studentviewappliedjobs(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("studentviewappliedjobs");
	    
	    HttpSession session = request.getSession();
	    Student st = (Student) session.getAttribute("student");
	    if(st != null) {
	    List<Applicants> appliedlist = studentService.findbyapplicantid(st.getId());
	    mv.addObject("appliedlist", appliedlist);
	    }
	    
	    return mv;
	    
	  }

	
	
}
