package com.project.www.controller.login;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.www.dao.MemberDAOInter;
import com.project.www.dto.MemberDTO;

@Controller
public class LoginController {
	@Autowired
	private MemberDAOInter memberDAOInter;
	
	@RequestMapping(value = "/loginform")
	public String loginForm() {		
		return "login/loginForm";
	}
	@PostMapping(value = "/loginProcess")
	public ModelAndView loginProcess(HttpSession session, MemberDTO mdto) {
		ModelAndView mav = new ModelAndView();
		int cnt = memberDAOInter.logingCheck(mdto);
		System.out.println(cnt);
		if(cnt == 1) {
			mdto = memberDAOInter.loginAfter(mdto);
			if(mdto.getMnum() <= 5) {
				session.setAttribute("sessionAdmin", 1);
			}
			session.setAttribute("sessionID", mdto.getMid());
			session.setAttribute("sessionName", mdto.getMname());
			session.setAttribute("sessionMnum", mdto.getMnum());
		}
		mav.addObject("cnt", cnt);
		mav.setViewName("login/loginCheck");
		return mav;
	}	
	@GetMapping(value = "/logout")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		session.removeAttribute("sessionName");
		session.removeAttribute("sessionID");
		session.removeAttribute("sessionMnum");
		session.removeAttribute("sessionAdmin");
		mav.setViewName("redirect:/web/main");
		return mav;
	}
}