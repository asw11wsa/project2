package com.project.www.dao;

import java.util.List;
import java.util.Map;

import com.project.www.dto.BookingDTO;
import com.project.www.dto.SearchPageDTO;
import com.project.www.dto.TourListDTO;

public interface BookingDAOInter extends PageListInter{
	public Boolean insert(List<BookingDTO> list);
	public List<BookingDTO> bookingDetail(Map<String, String> map);
	public int getCnt(SearchPageDTO dto);
	public List<TourListDTO> getTourList(Map<String, String> map);
}
