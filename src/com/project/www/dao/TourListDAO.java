package com.project.www.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.www.dto.SearchPageDTO;
import com.project.www.dto.SuperDTO;
import com.project.www.dto.TourListDTO;

@Repository("tourList")
public class TourListDAO implements TourListDAOInter{
	
	@Autowired
	private SqlSessionTemplate ss;

	

	@Override
	public boolean addTour(TourListDTO dto) {
		try {
			ss.insert("tourlist.add", dto);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean updateTour(TourListDTO dto) {
		try {
			ss.insert("tourlist.update", dto);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean deleteTour(int num) {
		try {
			ss.insert("tourlist.delete", num);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public List<? extends SuperDTO> getList(SearchPageDTO dto) {
		return ss.selectList("tourlist.list", dto);
	}

	@Override
	public int getCnt(SearchPageDTO dto) {
		return ss.selectOne("tourlist.total", dto);
	}
	
	@Override
	public TourListDTO tourADetail(int num) {
		return ss.selectOne("tourlist.adetail", num);
	}

	@Override
	public TourListDTO tourBDetail(int num) {
		return ss.selectOne("tourlist.bdetail", num);
	}

	@Override
	public int getAfterCnt(int num) {
		return ss.selectOne("tourlist.aftercnt", num);
	}

}
