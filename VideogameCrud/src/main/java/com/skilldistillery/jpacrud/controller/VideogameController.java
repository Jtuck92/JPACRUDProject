package com.skilldistillery.jpacrud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jpacrud.data.VideogameDAO;
import com.skilldistillery.jpacrud.entities.Videogame;

@Controller
public class VideogameController {

	@Autowired
	private VideogameDAO videogamedao;

	@RequestMapping(path = "/")
	public String index() {
		return "index";
	}

	@RequestMapping(path = "listOfVideogames.do", method = RequestMethod.GET)
	public String listAllVideogames(Model model) {
		List<Videogame> videogames = videogamedao.findVideogames();
		model.addAttribute("videogames", videogames);
		return "listVideogames";
	}

	@RequestMapping(path = "deleteVideogame.do", method = RequestMethod.GET)
	public String deleteVideogame(@RequestParam("vid") int vid, Model model) {
		if (videogamedao.deleteVideogame(vid)) {
			model.addAttribute("result", "Game Deleted!");
		} else {
			model.addAttribute("result", "Game Not Found!");
		}
		return "result";
	}

	@RequestMapping(path = "addVideogame.do", method = RequestMethod.GET)
	public String createVideogame(Videogame videogame, Model model) {
		model.addAttribute("videogame", videogamedao.createVideogame(videogame));
		return "newVideogame";
	}

//	@RequestMapping(path = "getVideogame.do", method = RequestMethod.GET)
//	public String getVideogame(Model model, int vid) {
//		Videogame videogame = videogamedao.findVideogameById(vid);
//		if (!(videogame == null)) {
//			if (videogame.getTitle() == null) {
//				model.addAttribute("videogame", videogame);
//				return "showNewVideogame";
//			} else {
//				model.addAttribute("videogame", videogame);
//				return "show";
//			}
//		} else {
//			model.addAttribute("result", "Game Not Found!");
//			return "result";
//		}
//	}
//
//	@RequestMapping(path = "updateVideogameForm.do", method = RequestMethod.GET)
//	public String updateVideogameForm(Videogame videogame, int vid, Model model) {
//		model.addAttribute("videogame", videogamedao.findVideogameById(vid));
//		return "updateVideogame";
//	}

	@RequestMapping(path = "updateVideogame.do", method = RequestMethod.POST)
	private String updateVideogame(int vid, Model model, Videogame videogame) {
		videogamedao.updateVideogame(vid, videogame);
		model.addAttribute("videogame", videogame);
		return "updateVideogame";
	}
}
