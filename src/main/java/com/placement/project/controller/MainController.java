package com.placement.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController 
{
	
	
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mainhome");
		return mv;
	}
	
	@GetMapping("mainabout")
	public ModelAndView about()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mainabout");
		return mv;
	} 
	
	
	@GetMapping("maincontact")
	public ModelAndView contact()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("maincontact");
		return mv;
	}
	
	
		
}
