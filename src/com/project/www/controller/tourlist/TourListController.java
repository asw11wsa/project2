package com.project.www.controller.tourlist;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.www.dao.TourListDAOInter;
import com.project.www.dto.TourListDTO;

@Controller
@RequestMapping(value = "/tourlist")
public class TourListController {
	
	@Autowired
	private TourListDAOInter tourListDAOInter;

	@GetMapping(value = "/list")
	public ModelAndView getlist(String cPage) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tourlist/list");
		return mav;
	}
	
	@PostMapping(value = "/insert")
	public ModelAndView insert(TourListDTO dto) {
		ModelAndView mav = new ModelAndView();
		boolean result = tourListDAOInter.addTour(dto);
		if(result) {
			mav.addObject("rmsg", "������ ���������� ����� �Ǿ����ϴ�.");
		}else {
			mav.addObject("rmsg", "������ �����ϴµ� ������ �߻��Ͽ����ϴ�.");
		}
		mav.setViewName("redirect:/tourlist/list");
		return mav;
	}
}
