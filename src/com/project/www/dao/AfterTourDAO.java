package com.project.www.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.www.dto.AfterTourDTO;
import com.project.www.dto.SearchPageDTO;
import com.project.www.dto.SuperDTO;

@Repository
public class AfterTourDAO implements AfterTourDAOInter{
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<? extends SuperDTO> getList(SearchPageDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insert(AfterTourDTO dto) {
		try {
			ss.insert("aftertour.add", dto);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

}
