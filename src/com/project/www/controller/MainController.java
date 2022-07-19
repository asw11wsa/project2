package com.project.www.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.www.dao.ContactDAOInter;

@Controller
public class MainController {
	
	@Autowired
	private ContactDAOInter contactDAOInter;

	@RequestMapping(value = {"","/","/main"})
	public String main(Model m,HttpSession session) {
		String id = (String)session.getAttribute("sessionID");
		if(id != null) {
			m.addAttribute("list", contactDAOInter.listchat(id.trim()));
			m.addAttribute("msgcnt", contactDAOInter.getUserStatusCnt(id.trim()));
		}
		return "main/index";
	}
}
