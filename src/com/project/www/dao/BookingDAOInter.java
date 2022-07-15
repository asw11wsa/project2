package com.project.www.dao;

import java.util.List;

import com.project.www.dto.BookingDTO;

public interface BookingDAOInter extends PageListInter{
	public Boolean insert(List<BookingDTO> list);
}
