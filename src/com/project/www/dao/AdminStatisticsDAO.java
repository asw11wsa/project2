package com.project.www.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.www.dto.BoardDTO;

@Repository
public class AdminStatisticsDAO implements AdminStatisticsDAOInter{

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public List<BoardDTO> stBoard() {
		return ss.selectList("adminst.statistics");
	}

}
