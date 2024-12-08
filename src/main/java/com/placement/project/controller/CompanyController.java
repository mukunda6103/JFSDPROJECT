package com.placement.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;

import com.placement.project.model.Applicants;
import com.placement.project.model.Company;
import com.placement.project.model.Jobs;
import com.placement.project.service.CompanyService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CompanyController {
	
	@Autowired
	private CompanyService companyService;
	
	@GetMapping("companyhome")
	public ModelAndView companyhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("companyhome");
		return mv;
	}
	
	
	@GetMapping("companylogin")
	public ModelAndView companylogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("companylogin");
		return mv;
	}
	
	
	@PostMapping("checkcompanylogin")
	public ModelAndView checkcompanylogin(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		Company c = companyService.checkcompanylogin(request.getParameter("cemail"),request.getParameter("cpwd"));
		session.setAttribute("company", c);
		ModelAndView mv = new ModelAndView();
		
		if(c!=null) {
			mv.setViewName("companyhome");
			return mv;
		}else {
			mv.setViewName("companylogin");
			mv.addObject("message","login failed");
			return mv;
		}
	}
	
	@GetMapping("companylogout")
	public ModelAndView companylogout(HttpServletRequest request)
	{
		
		HttpSession session = request.getSession();
		session.removeAttribute("company");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("companylogin");
		return mv;
	}
	
	@GetMapping("addjob")
	public String addjob(Model m) {
		m.addAttribute("job", new Jobs());
		return "addjob";
	}
	
	@PostMapping("insertjob")
	public ModelAndView insertjob(@ModelAttribute("job") Jobs j) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jobregsuccess");
		String msg = companyService.addjob(j);
		mv.addObject("message", msg);
		return mv;
	}
	
	@GetMapping("viewalljobs")
	public ModelAndView viewalljobs(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		Company company = (Company) session.getAttribute("company");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("companyviewalljobs");
		if(company!=null) {
		List<Jobs> jobs = companyService.viewalljobsbyemail(company.getEmail());
		mv.addObject("jobslist", jobs);
		}
		return mv;
	}
	
	@GetMapping("updateapplicantstatus")
	public ModelAndView updateapplicantstatus(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		Company cc = (Company) session.getAttribute("company");
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("companyupdateapplicantstatus");
		 if(cc != null) {
		List<Applicants> applicants = companyService.findallapplicants(cc.getEmail());
		mv.addObject("applicants", applicants);
		 }
		return mv;
	}
	
	@GetMapping("updatestatus")
    public String updatestatus(@RequestParam("status") String status,@RequestParam("jobid") Long jobid,
    		@RequestParam("applicantid") Long applicantid)
    {
			companyService.updateapplicantstatus(status,applicantid, jobid);
     return "redirect:/updateapplicantstatus";
      
    }
	
}
