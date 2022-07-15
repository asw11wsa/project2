package com.project.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.www.dao.TourListDAOInter;
import com.project.www.dto.SearchPageDTO;
import com.project.www.dto.TourListDTO;

@Service
public class TourListService {
	
	@Autowired
	private TourListDAOInter tourlist;

	public List<TourListDTO> tourlist(SearchPageDTO dto){
		return tourlist.getList(dto);
	}
}
