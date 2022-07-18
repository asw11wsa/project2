package com.project.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.www.dao.TourListDAOInter;
import com.project.www.dto.SearchPageDTO;
import com.project.www.dto.SuperDTO;
import com.project.www.dto.TourListDTO;

@Service
public class TourListService {
	
	@Autowired
	private TourListDAOInter tourlist;

	public List<? extends SuperDTO> tourlist(SearchPageDTO dto){
		return tourlist.getList(dto);
	}
	
	public boolean addTour(TourListDTO dto) {
		return tourlist.addTour(dto);
	}
	
	public TourListDTO tourDetail(int num) {
		return tourlist.tourADetail(num);
	}
}
