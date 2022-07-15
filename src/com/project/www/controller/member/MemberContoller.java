package com.project.www.controller.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.www.dao.MemberDAOInter;
import com.project.www.dto.MemberDTO;

@Controller
@RequestMapping(value = "/member")
public class MemberContoller {

	@Autowired
	private MemberDAOInter memberDaoInter;
	
	//select
//			@RequestMapping("/mypageForm")
//			public String myPage(Model model,@RequestParam("mid") String mid) {
//		
//				
//				System.out.println("string id : " + mid);
//				MemberDTO mvo = memberDaoInter.myPage(mid);
//				model.addAttribute("memdto", mvo);
//				
//			return "member/mypageForm";
//			}
			
			@GetMapping(value = "/mypageForm")
			public ModelAndView myPage(int mnum) {
				ModelAndView mav = new ModelAndView("member/mypageForm");
				MemberDTO dto = memberDaoInter.myPage(mnum);
				mav.addObject("memdto", dto);
				System.out.println("detail num : "+dto.getMnum());
				return mav;
			}
			
			// update
			@PostMapping("/memberUp")
			public String memberUp(Model model, MemberDTO dto) {
				System.out.println("detail num : "+dto.getMnum());
			memberDaoInter.upMember(dto);
			return "redirect:/web/member/mypageForm?mnum="+dto.getMnum();
			}
			
			// delete
			@RequestMapping("/memberDel")
			public String memberDel(HttpSession session, int mnum) {
				System.out.println(mnum);
				memberDaoInter.delMember(mnum);
				session.removeAttribute("sessionName");
				session.removeAttribute("sessionID");
				session.removeAttribute("sessionMnum");
				return "redirect:/web/main";
			}
}
