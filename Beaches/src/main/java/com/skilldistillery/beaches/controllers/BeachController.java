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
	public String getBeach(int bid, Model model) {
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
		return "beach/added";
	}
	@RequestMapping(path="updateBeach.do", method= RequestMethod.GET)
	public String updateBeach(Model model, int id) {
		model.addAttribute("beach", beachDao.findById(id));
		return "updateBeachForm";
	}
	@RequestMapping(path="beachUpdated.do", method= RequestMethod.POST)
	public String persistUpdateBeach(Beach beach, Model model, int id, String name, String description, Double rating, String sandColor, String closestCity, Boolean consideredTropical, Double avgHomePrice, Integer milesToClosestCity, Integer populationOfClosestCity, Double highestTemp , Double lowestTemp, String typeOfGovernment, Double avgFallTemp, Double avgWinterTemp, Double avgSpringTemp, Double avgSummerTemp, Integer region) { 
		beach.setName(name);
		beach.setDescription(description);
		beach.setRating(rating);
		beach.setSandColor(sandColor);
		beach.setClosestCity(closestCity);
		beach.setConsideredTropical(consideredTropical);
		beach.setAvgHomePrice(avgHomePrice);
		beach.setMilesToClosestCity(milesToClosestCity);
		beach.setPopulationOfClosestCity(populationOfClosestCity);
		beach.setHighestTemp(highestTemp);
		beach.setLowestTemp(lowestTemp);
		beach.setTypeOfGovernment(typeOfGovernment);
		beach.setAvgFallTemp(avgFallTemp);
		beach.setAvgWinterTemp(avgWinterTemp);
		beach.setAvgSpringTemp(avgSpringTemp);
		beach.setAvgSummerTemp(avgSummerTemp);
		beach.setRegion(region);
		
		model.addAttribute("beach", beach);
		beachDao.updateBeach(beach, id);
		return "beach/updated";
	}
	
	@RequestMapping(path="deleteBeach.do", method=RequestMethod.POST)
	public String deleteBeach(int id) {
		Beach beach = beachDao.findById(id);
		beachDao.deleteBeach(beach);
		return "beach/deleted";
		
		
	}
	
	
}
