package com.project.www.controller.contact;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.www.dao.AdminContactDAOInter;
import com.project.www.dto.SearchPageDTO;

@Controller
@RequestMapping(value = "/admin/contact")
public class AdminContactController {

	@Autowired
	private AdminContactDAOInter adminContactDAOInter;
	
	@GetMapping(value = "/list")
	public String chatList(Model m , SearchPageDTO dto,HttpSession session) {
		int totalRecord = adminContactDAOInter.getCnt(dto);
		m.addAttribute("totalRecord", totalRecord);
		if((int)session.getAttribute("sessionAdmin") != 1) {
			return "redirect:/web/main";
		}else {
			return "admin/contact/list";
		}
	}
	
	@GetMapping(value = "/detail")
	public String chatdetail(Model m,String id,HttpSession session) {
		m.addAttribute("list", adminContactDAOInter.listchat(id));
		m.addAttribute("id", id);
		if((int)session.getAttribute("sessionAdmin") != 1) {
			return "redirect:/web/main";
		}else {
			return "admin/contact/detail";
		}
	}
}
