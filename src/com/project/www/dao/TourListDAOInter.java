package com.project.www.dao;

import java.util.List;
import java.util.Map;

import com.project.www.dto.TourListDTO;

public interface TourListDAOInter {
	public List<TourListDTO> getList(Map<String, Integer> map);
	public boolean addTour(TourListDTO dto);
	public boolean updateTour(TourListDTO dto);
	public boolean deleteTour(int num);
	public TourListDTO tourDetail(int num);
}
