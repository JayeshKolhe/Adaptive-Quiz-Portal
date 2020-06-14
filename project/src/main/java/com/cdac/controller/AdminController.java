package com.cdac.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cdac.dao.AdminDao;
import com.cdac.model.Admin;
import com.cdac.model.Delete;
import com.cdac.model.Questions;

@Controller
public class AdminController {

	
	@Autowired
	AdminDao admindao;
	@GetMapping("/adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("/instructions")
	public ModelAndView instruction() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("instructions");
		return mv;
	}

	@PostMapping("/adminlogin")
	public ModelAndView validateadmin(Admin admin) {
		ModelAndView mv = new ModelAndView();
		try {
			boolean val = this.admindao.validateadmin(admin);
			if (val) {
				mv.setViewName("adminhome");

				return mv;
			} else {
				mv.setViewName("adminlogin");

				return mv;
			}
		} catch (Exception e) {
			mv.setViewName("adminlogin");

			return mv;
		}
	}
	

	@GetMapping("/insert")
	public ModelAndView insertquestion() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admininsert");
		return mv;
	}

	@PostMapping("/insert")
	public ModelAndView insertquestion(Questions question) {
		this.admindao.insertquestion(question);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}

	
	  
	  @GetMapping("/delete") 
	  public ModelAndView deletequestion(Questions model) 
	  {
		  ModelAndView mv=new ModelAndView();
		
		  
		 
		  mv.setViewName("admindelete");
		  return mv;
	
	  }
	  
	  @PostMapping("/delete")
	  public ModelAndView delete(Delete check)
	  {
		  
		  
			
		  ModelAndView mv=new ModelAndView();
		  admindao.deletequestion(check);
		  mv.setViewName("admindelete");
			return mv;
	  }
	  
}
