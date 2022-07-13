package com.project.www.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.www.dto.TourListDTO;

@Repository
public class TourListDAO implements TourListDAOInter{
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<TourListDTO> getList(Map<String, Integer> map) {
		return ss.selectList("tourlist.list", map);
	}

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
	public TourListDTO tourDetail(int num) {
		return ss.selectOne("tourlist.detail", num);
	}

}
