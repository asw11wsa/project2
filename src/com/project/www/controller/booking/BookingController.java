package com.project.www.controller.booking;

import java.util.ArrayList;
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

import com.project.www.dao.BookingDAOInter;
import com.project.www.dao.TourListDAOInter;
import com.project.www.dto.BookingDTO;
import com.project.www.dto.TourListDTO;

@Controller
@RequestMapping(value = "/booking")
public class BookingController {
	
	@Autowired
	private BookingDAOInter bookingDAOInter;
	
	@Autowired
	private TourListDAOInter tourlist; 
	
	@GetMapping(value = "book")
	public ModelAndView booking(int num,int adult,int children) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("num", num);
		mav.addObject("adult", adult);
		mav.addObject("children", children);
		mav.setViewName("booking/book");
		return mav;
	}

	@PostMapping("/addbooking")
   public String addBooking(HttpServletRequest request){
      List<BookingDTO> list = new ArrayList<BookingDTO>();
      String[] personchk = request.getParameterValues("personchk");
      String[] jumin = request.getParameterValues("jumin");
      String[] name = request.getParameterValues("name");
      String[] email = request.getParameterValues("email");
      String[] engfirst = request.getParameterValues("engfirst");
      String[] englast = request.getParameterValues("englast");
      String[] phone = request.getParameterValues("phone");
      String tournum = request.getParameter("tournum");
      
      for(int i=0; i<personchk.length ; i++) {
         BookingDTO dto = new BookingDTO();
         dto.setPersonchk(personchk[i]);
         System.out.println(personchk[i]);
         dto.setJumin((int)(Long.parseLong(jumin[i])));
         System.out.println(jumin[i]);
         dto.setName(name[i]);
         System.out.println(name[i]);
         dto.setEmail(email[i]);
         System.out.println(email[i]);
         dto.setEngfirst(engfirst[i]);
         System.out.println(engfirst[i]);
         dto.setEnglast(englast[i]);
         System.out.println(englast[i]);
         dto.setTournum(Integer.parseInt(tournum));
         System.out.println(tournum);
         dto.setPhone(Integer.parseInt(phone[i]));
         System.out.println(phone[i]);
         dto.setBooker("test1");
         list.add(dto);
      }
      
      boolean result = bookingDAOInter.insert(list);
      System.out.println(result);
      return "redirect:/web/main";
   }
	
	@RequestMapping(value = "/list")
	public String bookingList(Model m) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", "test1");
		m.addAttribute("list", bookingDAOInter.getTourList(map));
		return "booking/list";
	}
	
	@RequestMapping(value = "/detaillist")
	public String bookingDetailList(Model m, int num) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", "test1");
		map.put("num", String.valueOf(num));
		m.addAttribute("list", bookingDAOInter.bookingDetail(map));
		
		TourListDTO vo = tourlist.tourDetail(num);
		m.addAttribute("vo", vo);
		
		return "booking/detail";
	}

}
