package com.project.www.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.www.dto.BookingDTO;
import com.project.www.dto.SearchPageDTO;
import com.project.www.dto.SuperDTO;
import com.project.www.dto.TourListDTO;

@Repository
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

	@Override
	public List<BookingDTO> getList(SearchPageDTO dto) {
		return ss.selectList("booking.list",dto);
	}
	
	@Override
	public List<TourListDTO> getTourList(Map<String, String> map){
		return ss.selectList("booking.bookinglist",map);
	}

	@Override
	public List<BookingDTO> bookingDetail(Map<String, String> map) {
		return ss.selectList("booking.bookingdetail", map);
	}
	
	@Override
	public int getCnt(SearchPageDTO dto) {
		return ss.selectOne("booking.totalcount",dto);
	}

}
