package com.project.www.controller.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.www.dao.AdminDAO;
import com.project.www.dao.AdminDAOInter;
import com.project.www.dao.MemberDAOInter;
import com.project.www.dto.AdminDTO;
import com.project.www.dto.MemberDTO;

@Controller
public class LoginController {
	@Autowired
	private MemberDAOInter memberDAOInter;
	@Autowired
	private AdminDAOInter adminDAOInter;
	
	@RequestMapping(value = "/loginForm")
	public String loginForm() {		
		return "login/form/check/loginForm";
	}
	@RequestMapping(value = "/loginAdminForm")
	public String loginAdminForm() {		
		return "login/form/check/loginAdminForm";
	}
	@RequestMapping(value="/loginChoice")
	public String loginChoice() {
		return "login/loginChoice";
	}
	@RequestMapping(value="/loginfId")
	public String loginfId() {
		return "login/loginfId";
	}
	@RequestMapping(value="chk/idchk")
	public ModelAndView loginfId(String memail) {
		ModelAndView mav = new ModelAndView();
		String mid = memberDAOInter.findId(memail);
		System.out.println("find ID : " +mid);
		mav.addObject("mid", mid);
		mav.setViewName("login/chk/check/idchk");
		return mav;
	}
	@RequestMapping(value = "chk/pwdchk")
	public ModelAndView loginfPwd(String memail) {
		ModelAndView mav = new ModelAndView();
		String mpwd = memberDAOInter.findPwd(memail);
		System.out.println("find PWD : " +mpwd);
		mav.addObject("mpwd", mpwd);
		mav.setViewName("login/chk/check/pwdchk");
		return mav;
	}
	@PostMapping(value = "/loginProcess")
	public ModelAndView loginProcess(HttpSession session, MemberDTO mdto, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login/loginCheck");
		return mav;
	}	
	@PostMapping(value = "/loginAProcess")
	public ModelAndView loginAProcess(HttpSession session, AdminDTO adto) {
		ModelAndView mav = new ModelAndView();
		int cnt = adminDAOInter.logingCheck(adto);
		String aid = adto.getAid();
		System.out.println(cnt);
		System.out.println(aid);
		if(cnt==1) {
			mav.addObject("cnt", 1);
			adto = adminDAOInter.loginAfter(adto);
			session.setAttribute("sessionName", "°ü¸®ÀÚ");
			session.setAttribute("sessionID", adto.getAid());
			session.setAttribute("sessionMnum", adto.getAnum());
			session.setAttribute("sessionAdmin", 1);
		}
		mav.setViewName("redirect:/web/main");
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