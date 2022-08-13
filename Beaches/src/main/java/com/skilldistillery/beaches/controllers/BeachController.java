package com.skilldistillery.beaches.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public class BeachController {

	@Controller
	public class FilmController {
		
		@Autowired
		private BeachDAO beachDao;
		
		@RequestMapping(path={"/","index.do"})
		public String index(Model model) {
			model.addAttribute("beach", beachDao.findAll());
//		  return "WEB-INF/index.jsp";
		   return "index"; // if using a ViewResolver.
		}
		
		@RequestMapping(path = "getBeach.do")
		public String getBeach(Integer fid, Model model) {
			Beach beach = beachDao.findById(fid);
			model.addAttribute("beach", beach;
			return "index";
		}
		
}
