package com.skilldistillery.beaches.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.beaches.data.BeachDao;
import com.skilldistillery.beaches.entities.Beach;

@Controller
public class BeachController {

	@Autowired
	private BeachDao beachDao;

	@RequestMapping(path={"/","index.do"})
	public String index(Model model) {
	model.addAttribute("beaches", beachDao.listAll());
//  return "WEB-INF/index.jsp";
   return "index"; // if using a ViewResolver.
}

	@RequestMapping(path = "getBeach.do")
	public String getBeach(Integer bid, Model model) {
		Beach beach = beachDao.findById(bid);
		model.addAttribute("beach", beach);
		return "beach/show";
	}
	
	@RequestMapping(path="addBeach.do", method= RequestMethod.GET)
	public String addBeach(Model model, Beach beach) {
		return "addBeachForm";
	}
	@RequestMapping(path="beachAdded.do", method= RequestMethod.POST)
	public String persistBeach(Beach beach, Model model) {
		model.addAttribute("beach", beach);
		beachDao.addBeach(beach);
		return "beach/show";
	}
}
