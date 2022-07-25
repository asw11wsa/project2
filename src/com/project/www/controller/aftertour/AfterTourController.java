package com.project.www.controller.aftertour;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.www.dao.AfterTourDAOInter;
import com.project.www.dao.TourListDAOInter;
import com.project.www.dto.AfterTourDTO;

@Controller
@RequestMapping(value = "/aftertour")
public class AfterTourController {
	
	@Autowired
	private AfterTourDAOInter afterTourDAOInter;
	
	@Autowired
	private TourListDAOInter tourList;
	
	@PostMapping(value = "/insert")
	public ModelAndView insert(AfterTourDTO dto,HttpServletRequest request,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String img_path = "resources\\imgfile";
		// request를 가지고 이미지의 경로를 받아서 출력을 
		String r_path = request.getRealPath("/");
		System.out.println("r_path : " + r_path + img_path);
		// 업로드 된 이미지의 이름을 받아서 이미지를복수
		String oriFn = dto.getMfile().getOriginalFilename();
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\").append(oriFn);
		
		dto.setBooker((String)session.getAttribute("sessionID"));
		
		// 추상경로(이미지를 저장할 경로) 파일 객체로 생성
		File a = new File(path.toString());
		
		try {
			if(oriFn.equals("")) {
	            dto.setImgn("noimage.jpg");
	         }else {
	            dto.getMfile().transferTo(a);
	            dto.setImgn(oriFn);
	         }
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		afterTourDAOInter.insert(dto);
		
		mav.setViewName("redirect:/web/main");
		return mav;
	}
	
	@GetMapping(value = "/review")
	public ModelAndView review(@RequestParam(defaultValue = "1") int num) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", tourList.tourBDetail(num));
		mav.setViewName("aftertour/review");
		return mav;
	}
}
