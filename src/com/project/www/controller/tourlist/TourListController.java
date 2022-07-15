package com.project.www.controller.tourlist;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.www.dao.TourListDAOInter;
import com.project.www.dto.SearchPageDTO;
import com.project.www.dto.TourListDTO;

@Controller
@RequestMapping(value = "/tourlist")
public class TourListController {
	
	@Autowired
	private TourListDAOInter tourListDAOInter;

	@GetMapping(value = "/list")
	public ModelAndView getlist(String cPage,@RequestParam(defaultValue = "") String searchname,@RequestParam(defaultValue = "") String searchval) {
		ModelAndView mav = new ModelAndView();
		SearchPageDTO dto = new SearchPageDTO();
		dto.setStart(1);
		dto.setEnd(8);
		if(searchname.equals("searchtitle")) {
			dto.setSearchtitle(searchval);
		}else if(searchname.equals("searchregion")) {
			dto.setSearchregion(searchval);
		}
		List<TourListDTO> list = tourListDAOInter.getList(dto);
		mav.addObject("list", list);
		mav.setViewName("tourlist/list");
		return mav;
	}
	
	@PostMapping(value = "/insert")
	public String uploadFile(Model m, TourListDTO dto, HttpServletRequest request) {
		String img_path = "resources\\imgfile";
		// request를 가지고 이미지의 경로를 받아서 출력을 
		String r_path = request.getRealPath("/");
		System.out.println("r_path : " + r_path + img_path);
		// 업로드 된 이미지의 이름을 받아서 이미지를복수
		String oriFna = dto.getMfilea().getOriginalFilename();
		String oriFnb = dto.getMfileb().getOriginalFilename();
		String oriFnc = dto.getMfilec().getOriginalFilename();
		StringBuffer patha = new StringBuffer();
		patha.append(r_path).append(img_path).append("\\").append(oriFna);
		StringBuffer pathb = new StringBuffer();
		pathb.append(r_path).append(img_path).append("\\").append(oriFnb);
		StringBuffer pathc = new StringBuffer();
		pathc.append(r_path).append(img_path).append("\\").append(oriFnc);
		
		// 추상경로(이미지를 저장할 경로) 파일 객체로 생성
		File a = new File(patha.toString());
		File b = new File(pathb.toString());
		File c = new File(pathc.toString());
		
		try {
			if(oriFna.equals("")) {
	            dto.setImga("noimage.jpg");
	         }else {
	            dto.getMfilea().transferTo(a);
	            dto.setImga(oriFna);
	         }
	         if(oriFnb.equals("")) {
	            dto.setImgb("noimage.jpg");
	         }else {
	            dto.getMfileb().transferTo(b);
	            dto.setImgb(oriFnb);
	         }
	         if(oriFnc.equals("")) {
	            dto.setImgc("noimage.jpg");
	         }else {
	            dto.getMfilec().transferTo(c);
	            dto.setImgc(oriFnc);
	         }
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		tourListDAOInter.addTour(dto);
		
		return "redirect:/web/tourlist/list";
	}
	
	@GetMapping(value = "/form")
	public ModelAndView form() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("tourlist/form2");
		return mav;
	}
	
	@GetMapping(value = "/detail")
	public ModelAndView detail(int num) {
		ModelAndView mav = new ModelAndView();
		TourListDTO vo = tourListDAOInter.tourDetail(num);
		mav.addObject("vo", vo);
		mav.setViewName("tourlist/detail");
		return mav;
	}
}
