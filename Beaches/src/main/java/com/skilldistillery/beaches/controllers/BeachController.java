package com.skilldistillery.beaches.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
