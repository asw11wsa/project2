package com.project.www.controller.contact;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.www.dao.ContactDAOInter;
import com.project.www.dto.ContactDTO;

@RestController
@RequestMapping(value = "/contact")
public class ContactController {
	
	@Autowired
	private ContactDAOInter contactDAOInter;
	
	@GetMapping(value = "/insert")
	public void insert(HttpSession session,String msg) {
		ContactDTO dto = new ContactDTO();
		dto.setSender((String)session.getAttribute("sessionID"));
		dto.setReceiver("admin");
		dto.setMsg(msg);
		contactDAOInter.insert(dto);
	}
	
	@GetMapping(value = "/list")
	public void getlist(Model m,String id) {
		m.addAttribute("list", contactDAOInter.listchat(id));
	}
	
	@GetMapping(value = "/updateuser")
	public int updateUser(Model m,String id) {
		contactDAOInter.changeUserStatus(id);
		System.out.println(contactDAOInter.getUserStatusCnt(id));
		return contactDAOInter.getUserStatusCnt(id);
	}
}
