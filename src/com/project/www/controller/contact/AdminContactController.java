package com.project.www.controller.contact;

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
	public String chatList(Model m , SearchPageDTO dto) {
		int totalRecord = adminContactDAOInter.getCnt(dto);
		m.addAttribute("totalRecord", totalRecord);
		return "admin/contact/list";
	}
	
	@GetMapping(value = "/detail")
	public String chatdetail(Model m,String id) {
		m.addAttribute("list", adminContactDAOInter.listchat(id));
		m.addAttribute("id", id);
		return "admin/contact/detail";
	}
}
