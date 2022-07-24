package com.project.www.controller.adminst;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.www.dao.AdminStatisticsDAOInter;
import com.project.www.dto.BoardDTO;

@Controller
@RequestMapping(value = "/adminstatistics")
public class AdminStatisticsController {

	@Autowired
	private AdminStatisticsDAOInter adminStatisticsInter;
	
	@RequestMapping(value = "/statistics")
	public String boardStatistics(Model model) {
		List<BoardDTO> list = adminStatisticsInter.stBoard();
		model.addAttribute("list", list);
		return "admin/statistics";
	}
}
