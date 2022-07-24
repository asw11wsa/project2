package com.project.www.controller.adminqna;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.www.dao.AdminQnaDAOInter;
import com.project.www.dto.QnaboardDTO;
import com.project.www.dto.SearchPageDTO;

@Controller
@RequestMapping(value = "/adminqna")
public class AdminQnaController {

	@Autowired
	private AdminQnaDAOInter adminQnaDAOInter;
	
	@RequestMapping(value = "/adminQnaList")
	public String adminQnaList(Model model, SearchPageDTO dto) {
		dto.setSearchkey(dto.getSearchkey());
		dto.setSearchval(dto.getSearchval());
		model.addAttribute("dto", dto);
		int totalRecord = adminQnaDAOInter.getCnt(dto);
		model.addAttribute("totalRecord", totalRecord);
		return "admin/qnalist";
	}
	
	@GetMapping(value = "/detail")
	public ModelAndView qnaDetail(int inum) {
		ModelAndView mav = new ModelAndView("admin/qnadetail");
		QnaboardDTO dto = adminQnaDAOInter.qnaDetail(inum);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@PostMapping(value = "/update")
	public String qnaUpdate(Model model,QnaboardDTO dto) {
		adminQnaDAOInter.qnaUpdate(dto);
		return "redirect:/web/adminqna/adminQnaList";
	}
}
