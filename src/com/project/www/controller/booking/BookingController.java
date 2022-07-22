package com.project.www.controller.booking;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.www.dao.BookingDAOInter;
import com.project.www.dao.TourListDAOInter;
import com.project.www.dto.BookingDTO;
import com.project.www.dto.SearchPageDTO;
import com.project.www.dto.TourListDTO;

@Controller
@RequestMapping(value = "/booking")
public class BookingController {
	
	@Autowired
	private BookingDAOInter bookingDAOInter;
	
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
   public String addBooking(HttpServletRequest request, HttpSession session){
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
         dto.setBooker(session.getAttribute("sessionID").toString());
         list.add(dto);
      }
      
      boolean result = bookingDAOInter.insert(list);
      System.out.println(result);
      return "redirect:/web/main";
   }
	
	@RequestMapping(value = "/list")
	public String bookingList(Model m, SearchPageDTO dto,HttpSession session) {
		dto.setSearchid(session.getAttribute("sessionID").toString());
		m.addAttribute("dto", dto);
		m.addAttribute("totalRecord",bookingDAOInter.getCntTour(dto));
		return "booking/list";
	}
	
	@RequestMapping(value = "/detaillist")
	public String bookingDetail(Model m, int num, HttpSession session) {
		Map<String, String> map = new HashMap<String, String>();
		String id = session.getAttribute("sessionID").toString();
		
		TourListDTO vo = bookingDAOInter.tourlistDetail(num);
		m.addAttribute("vo", vo);
		
		BookingDTO dto = new BookingDTO();
		
		dto.setBooker(id);
		dto.setTournum(num);
		m.addAttribute("bklist", bookingDAOInter.booknumDetail(dto));
		
		return "booking/detail";
	}
	
	@PostMapping(value = "/detaillist2")
	public String bookingDetail2(Model m, int num, int bknum, HttpSession session) {
		System.out.println(num+" "+bknum);
		Map<String, String> map = new HashMap<String, String>();
		String id = session.getAttribute("sessionID").toString();
		map.put("id", id);
		map.put("num", String.valueOf(num));
		map.put("booknum",String.valueOf(bknum));
		m.addAttribute("list", bookingDAOInter.bookingDetail(map));
		m.addAttribute("delnum", bknum);
		return "booking/ajax/detail";
	}
	
	@PostMapping(value = "/deletebooking")
	public String deleteBooking(HttpServletRequest request, HttpSession session) {
		BookingDTO dto = new BookingDTO();
		dto.setBooker(session.getAttribute("sessionID").toString());
		dto.setBooknum(Integer.parseInt(request.getParameter("delnum")));
		bookingDAOInter.deleteBooking(dto);
		System.out.println("ªË¡¶!");
		return "redirect:/web/booking/list";
	}

}
