package com.project.www.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.www.dao.AdminMemberDaoInter;
import com.project.www.dto.MemberDTO;
import com.project.www.dto.SearchPageDTO;
import com.project.www.dto.TourListDTO;

@Controller
@RequestMapping(value = "/adminmember")
public class AdminMemberController {

	@Autowired
	private AdminMemberDaoInter adminMemberDaoInter;
	
	@RequestMapping(value = "/adminMember")
	public String adminMemberList(Model model, SearchPageDTO dto) {
		dto.setSearchkey(dto.getSearchkey());
		dto.setSearchval(dto.getSearchval());
		model.addAttribute("dto", dto);
		int totalRecord = adminMemberDaoInter.getCnt(dto);
		model.addAttribute("totalRecord", totalRecord);
		return "admin/memlist";
	}
	
	@GetMapping(value = "/detail")
	public ModelAndView memberDetail(int mnum) {
		ModelAndView mav = new ModelAndView("admin/memdetail");
		MemberDTO dto = adminMemberDaoInter.getDetail(mnum);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@PostMapping(value = "/update")
	public String updateMember(Model model, MemberDTO dto) {
		adminMemberDaoInter.updateMember(dto);
		return "redirect:/web/adminmember/adminMember?cPage=1";
	}
	
	@RequestMapping(value = "/delete")
	public String deleteMember(int mnum) {
		adminMemberDaoInter.deleteMember(mnum);
		return "redirect:/web/adminmember/adminMember?cPage=1";
	}
}
