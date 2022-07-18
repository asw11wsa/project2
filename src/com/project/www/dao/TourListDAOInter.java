package com.project.www.dao;

import com.project.www.dto.SearchPageDTO;
import com.project.www.dto.TourListDTO;

public interface TourListDAOInter extends PageListInter{
	//public List<TourListDTO> getList(SearchPageDTO dto);
	public boolean addTour(TourListDTO dto);
	public boolean updateTour(TourListDTO dto);
	public boolean deleteTour(int num);
	public TourListDTO tourADetail(int num);
	public TourListDTO tourBDetail(int num);
	public int getAfterCnt(int num);
	public int getCnt(SearchPageDTO dto);
}
