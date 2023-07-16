package com.skilldistillery.oceanlife.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.oceanlife.data.OceanLifeDAO;
import com.skilldistillery.oceanlife.entities.OceanLife;

@Controller
public class OceanLifeController {
	
	@Autowired
	private OceanLifeDAO fishDao;

	@RequestMapping (path = {"/", "home.do"} )
	public String goHome(Model model) {
		model.addAttribute("fishList", fishDao.findAll());
		return "home";
	}
	@RequestMapping(path = { "getFish.do"})
	public String displayFish(Model model, Integer fishId) {
		OceanLife fish= fishDao.findById(fishId);
		model.addAttribute("fish", fish);
		return"OceanLife/show";
	}
	
	@RequestMapping(path = {"deleteFish.do"})
	public String deleteFish(Model model, Integer fishId) {
		fishDao.deleteById(fishId);
		return"home";
	}
	
	@RequestMapping(path = {"editFish.do"})
	public String updateFish(Model model, OceanLife fish, Integer fishId) {
		System.out.println("\n\nin controller FISHID "+fishId);
		System.out.println("\n\nin controller "+fish);
		fishDao.update(fishId, fish);
		model.addAttribute("fish", fish);
		return"OceanLife/show";
	}
	
	@RequestMapping(path={"addFish.do"})
	public String addFish(Model model, OceanLife fish) {
		fishDao.create(fish);
		model.addAttribute("fish", fish);
		return "home";
	}

}
