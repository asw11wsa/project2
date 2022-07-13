package com.project.www.controller.tourlist;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/tourlist")
public class TourListController {

	@GetMapping(value = "/list")
	public ModelAndView getlist(String cPage) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tourlist/list");
		return mav;
	}
}
