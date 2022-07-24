package com.project.www.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.www.dto.QnaboardDTO;
import com.project.www.dto.SearchPageDTO;

@Repository("adminQnaList")
public class AdminQnaDAO implements AdminQnaDAOInter{

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<QnaboardDTO> getList(SearchPageDTO dto) {
		return ss.selectList("adminqna.qnalist", dto);
	}

	@Override
	public int getCnt(SearchPageDTO dto) {
		return ss.selectOne("adminqna.totalCount", dto);
	}

	@Override
	public QnaboardDTO qnaDetail(int inum) {
		return ss.selectOne("adminqna.detail", inum);
	}

	@Override
	public void qnaUpdate(QnaboardDTO dto) {
		ss.update("adminqna.update", dto);
	}
	
	
}
