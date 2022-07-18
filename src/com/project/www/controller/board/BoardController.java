package com.project.www.controller.board;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.www.dao.BoardDaoInter;
import com.project.www.dto.BoardDTO;
import com.project.www.dto.SearchPageDTO;






@Controller
@RequestMapping(value = "/board")
public class BoardController {
	@Autowired
	private BoardDaoInter boardList;
	
	
	
	
	@GetMapping(value="/upform")
	public String uploadForm() {
		return "updemo/upform";
	}
	// 파일 업로드 처리 - 
		@PostMapping(value="/uploadpro")
		public String uploadFile(Model m, BoardDTO dto,
				HttpServletRequest request) {
			
			String img_path ="resources\\imgfile";
			String r_path = request.getRealPath("/");
			System.out.println("r_path:"+r_path);
			String oriFn = dto.getBfile().getOriginalFilename();
			System.out.println(dto.getBfile());
			long size = dto.getBfile().getSize();
			String contentType = dto.getBfile().getContentType();
			System.out.println("oriFn:"+oriFn);
			System.out.println("파일 크기 :"+size);
			System.out.println("파일의 type :"+contentType);
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\");
			path.append(oriFn);
			System.out.println("FullPath :"+path);
			File f = new File(path.toString());
			try {
				dto.getBfile().transferTo(f);
				dto.setBimg(oriFn);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			boardList.addBoard(dto);
			return "redirect:/web/board/list";
		}
		@RequestMapping("/list")
		public String boardList(Model model,SearchPageDTO dto) {
			int totalRecord = boardList.getCnt();
			model.addAttribute("totalRecord", totalRecord);
			model.addAttribute("dto", dto);
			return  "updemo/uplist";
		}
		
		@GetMapping(value = "/detail")
		public ModelAndView getDetail(Model m,int bnum) {
			ModelAndView mav = new ModelAndView();
			mav.addObject("vo", boardList.getDetail(bnum));
			m.addAttribute("bnum", bnum);
			mav.setViewName("updemo/detail");
			return mav;
		}
		
		@GetMapping(value = "/updateForm")
		public ModelAndView updateForm(int bnum) {
			ModelAndView mav = new ModelAndView();
			mav.addObject("vo", boardList.getDetail(bnum));
			mav.setViewName("updemo/update");
			return mav;
		}
		
		@PostMapping(value = "/update")
		public String upBoard(Model m , BoardDTO vo, HttpServletRequest request) {
			String img_path="resources\\imgfile";
			String r_path= request.getRealPath("");
			System.out.println("r_path : "+r_path);			
			String oriFn = vo.getBfile().getOriginalFilename();
			System.out.println(vo.getBfile());
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\");
			path.append(oriFn);
			System.out.println("Fullpath : "+ path);
			File f = new File(path.toString());
			try {
				vo.getBfile().transferTo(f);				
				vo.setBimg(oriFn);
			} catch (IllegalStateException | IOException e) {				
				e.printStackTrace();		
				}
			System.out.println(vo.getBsub());
			System.out.println(vo.getBnum());
			System.out.println(vo.getBwriter());
			System.out.println(vo.getBimg());
			boardList.updateBoard(vo);
			return "redirect:/web/board/list";
			
		}
		@RequestMapping(value = "delete")
		public String delBoard(int bnum) {
			boardList.deleteBoard(bnum);
			return "redirect:/web/board/list";
		}
		
	
}
