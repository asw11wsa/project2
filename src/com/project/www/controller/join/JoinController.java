package com.project.www.controller.join;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.www.dao.JoinDAOInter;
import com.project.www.dto.AdminDTO;
import com.project.www.dto.MemberDTO;

@Controller
@RequestMapping(value="/join")
public class JoinController {

	@Autowired
	private JoinDAOInter joindaointer;
	
	@RequestMapping(value = "/joinChoice")
	public String joinChoice() {		
		return "join/joinChoice";
	}
	@GetMapping(value = "/joinform")
	public ModelAndView joinform(String cPage) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("join/joinform");
		return mav;
	}
	@GetMapping(value = "/joinAdminform")
	public ModelAndView joinAdminform(String cPage) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("join/joinAdminform");
		return mav;
	}
	@PostMapping(value="/memberadd")
	public ModelAndView memberAdd(MemberDTO dto, HttpServletRequest request) {
		String jubun1 = request.getParameter("jubun1");
		String jubun2 = request.getParameter("jubun2");
		dto.setMjubun(jubun1+"-"+jubun2);
		
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		dto.setMemail(email1+"@"+email2);
		
		String adr1 = request.getParameter("adr");
		String adr2 = request.getParameter("adr2");
		dto.setMadr(adr1+" "+adr2);
		
//		System.out.println("=== 파라미터값 확인용 ===");
//		System.out.println("ID : "+dto.getMid()+" ("+dto.getMname()+")");
//		System.out.println("PWD : "+dto.getMpwd());
//		System.out.println("JUBUN : "+dto.getMjubun());
//		System.out.println("EMAIL : "+dto.getMemail());
//		System.out.println("PHONE : "+dto.getMphone());
//		System.out.println("ADR : "+dto.getMadr());
//		System.out.println("DATE : "+dto.getMdate());
		
		ModelAndView mav=null;
		try {
			joindaointer.addMember(dto);
			mav = new ModelAndView("redirect:/web/main");
		} catch (Exception e) {
			e.printStackTrace();
			mav = new ModelAndView("join/joinerror");
		}
//		if(joindaointer.addMember(dto)) {
//			mav = new ModelAndView("redirect:/web/main");
//		}else {
//			mav = new ModelAndView("join/joinerror");
//		}
		return mav;
	}
	@PostMapping(value="/adminadd")
	public ModelAndView adminAdd(AdminDTO dto, HttpServletRequest request) {
		ModelAndView mav=null;
		try {
			joindaointer.addAdmin(dto);
			mav = new ModelAndView("redirect:/web/main");
		} catch (Exception e) {
			e.printStackTrace();
			mav = new ModelAndView("join/joinerror");
		}
		return mav;
	}
	@GetMapping(value="/chk/idchk")
	public ModelAndView idCheck(Model model, @RequestParam("mid") String mid) {
		int cnt = joindaointer.checkId(mid);
		model.addAttribute("cnt", cnt);
		ModelAndView mav = new ModelAndView("join/chk/idchk");
		return mav;
	}
	@GetMapping(value="/chk/idchkAdmin")
	public ModelAndView idAdminCheck(Model model, @RequestParam("aid") String aid) {
		int cnt = joindaointer.checkAdminId(aid);
		model.addAttribute("cnt", cnt);
		ModelAndView mav = new ModelAndView("join/chk/idchk");
		return mav;
	}
	
	
}