package com.project.www.controller.tourlist;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.servlet.ModelAndView;

import com.project.www.dao.TourListDAOInter;
import com.project.www.dto.TourListDTO;

@Controller
@RequestMapping(value = "/tourlist")
public class TourListController {
	
	@Autowired
	private TourListDAOInter tourListDAOInter;

	@GetMapping(value = "/list")
	public ModelAndView getlist(String cPage) {
		ModelAndView mav = new ModelAndView();
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", 1);
		map.put("end", 8);
		List<TourListDTO> list = tourListDAOInter.getList(map);
		mav.addObject("list", list);
		mav.setViewName("tourlist/list");
		return mav;
	}
	
	@PostMapping(value = "/insert")
	public String uploadFile(Model m, TourListDTO dto, HttpServletRequest request) {
		String img_path = "resources\\imgfile";
		// request�� ������ �̹����� ��θ� �޾Ƽ� ����� 
		String r_path = request.getRealPath("/");
		System.out.println("r_path : " + r_path + img_path);
		// ���ε� �� �̹����� �̸��� �޾Ƽ� �̹���������
		String oriFna = dto.getMfilea().getOriginalFilename();
		String oriFnb = dto.getMfileb().getOriginalFilename();
		String oriFnc = dto.getMfilec().getOriginalFilename();
		StringBuffer patha = new StringBuffer();
		patha.append(r_path).append(img_path).append("\\").append(oriFna);
		StringBuffer pathb = new StringBuffer();
		pathb.append(r_path).append(img_path).append("\\").append(oriFnb);
		StringBuffer pathc = new StringBuffer();
		pathc.append(r_path).append(img_path).append("\\").append(oriFnc);
		
		// �߻���(�̹����� ������ ���) ���� ��ü�� ����
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
	
	@GetMapping(value = "book")
	public ModelAndView booking(int num,int adult,int children) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("num", num);
		mav.addObject("adult", adult);
		mav.addObject("children", children);
		mav.setViewName("tourlist/book");
		return mav;
	}
}
