package com.project.www.dao;

import java.util.List;
import java.util.Map;

import com.project.www.dto.SearchPageDTO;
import com.project.www.dto.TourListDTO;

public interface TourListDAOInter {
	public List<TourListDTO> getList(SearchPageDTO dto);
	public boolean addTour(TourListDTO dto);
	public boolean updateTour(TourListDTO dto);
	public boolean deleteTour(int num);
	public TourListDTO tourDetail(int num);
}
