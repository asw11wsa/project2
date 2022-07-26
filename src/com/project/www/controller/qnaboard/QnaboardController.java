package com.project.www.controller.qnaboard;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.www.dao.QnaboardDAOInter;
import com.project.www.dto.MemberDTO;
import com.project.www.dto.QnaboardDTO;

@Controller
@RequestMapping(value = "/qna")
public class QnaboardController {
	@Autowired
	private QnaboardDAOInter qnaList;
	//select
	@GetMapping(value = "/qnaList")
	public String listQna(HttpSession session,  Model model, int mnum) {
		// 현재 로그인 된 아이디 값을 sessionMnum에 저장
		int num = (int) session.getAttribute("sessionMnum");
		System.out.println("sessionMnum: "+num);
		List<QnaboardDTO> list = qnaList.getqnaList(num);
		model.addAttribute("list", list);
		return "qnaboard/qnaList";
	}
	// insert
	@GetMapping(value = "/qnaboardForm")
	public String qnaboardForm() {
		return "qnaboard/qnaboardForm";
	}
	// jsp
	@PostMapping(value = "/qboard")
	public String addQnaboard(QnaboardDTO qvo,HttpSession session) {
		int mnum = (int) session.getAttribute("sessionMnum");
		qnaList.addQnaboard(qvo);
		MemberDTO dto = new MemberDTO();
		System.out.println("getMnum : "+dto.getMnum());
		System.out.println("getIwriter-jsp" + qvo.getIwriter());
		return "redirect:/web/qna/qnaList?mnum="+mnum;
	}
	//select detail 상세보기
	@GetMapping(value = "/qnaDetail")
	public String qnaDetail(Model model, int num) {
		System.out.println("qnadetail:" +num);
		QnaboardDTO dto = qnaList.getqnaDetail(num);
		model.addAttribute("vo", dto);
		System.out.println("상세보기 dto.getInum() :"+dto.getInum());
		return "qnaboard/qnaDetail";
	}
	
	// select
	@GetMapping(value = "/qnaupForm")
	public String upQnaboardForm(Model model, int inum) {
		QnaboardDTO dto = qnaList.upQnapage(inum);
		model.addAttribute("vo", dto);
		return "qnaboard/qnaupForm";
	}
	//update
	@PostMapping("/upqnaboard")
	public String upQnaboard(HttpSession session,Model model, QnaboardDTO vo) {
		int mnum = (int) session.getAttribute("sessionMnum");
		qnaList.upQnaboard(vo);
		return "redirect:/web/qna/qnaList?mnum="+mnum;				
	}
	//delete
	@RequestMapping(value = "delete")
	public String delBoard(HttpSession session, int inum) {
		int mnum = (int) session.getAttribute("sessionMnum");
		qnaList.delQnaboard(inum);
		return "redirect:/web/qna/qnaList?mnum="+mnum;
	}
	

}
