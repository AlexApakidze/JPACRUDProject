package com.skilldistillery.oceanlife.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.oceanlife.data.OceanLifeDAO;

@Controller
public class OceanLifeController {
	
	@Autowired
	private OceanLifeDAO fishDao;

	@RequestMapping (path = {"/", "home.do"} )
	public String goHome(Model model) {
		model.addAttribute("fishList", fishDao.findAll());
		return "home";
	}

}
