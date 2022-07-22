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

@Repository("bookingList")
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
	public int getCntTour(SearchPageDTO dto) {
		return ss.selectOne("booking.totaltour",dto);
	}
	
	@Override
	public List<BookingDTO> bookingDetail(Map<String, String> map) {
		return ss.selectList("booking.bookingdetail", map);
	}
	
	@Override
	public TourListDTO tourlistDetail(int num) {
		return ss.selectOne("booking.tourdetail",num);
	}
	
	@Override
	public void deleteBooking(BookingDTO dto) {
		ss.delete("booking.bookingdelete",dto);
	}
	
	@Override
	public List<BookingDTO> booknumDetail(BookingDTO dto){
		return ss.selectList("booking.booknumdetail",dto);
	}
}
