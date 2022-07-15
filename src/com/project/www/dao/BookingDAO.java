package com.project.www.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.www.dto.BookingDTO;

@Repository("tourlist")
public class BookingDAO implements BookingDAOInter{
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public Boolean insert(List<BookingDTO> list) {
		try {
			ss.insert("booking.add", list);
			return true;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
