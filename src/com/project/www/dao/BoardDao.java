package com.project.www.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.www.dto.BoardDTO;
import com.project.www.dto.SearchPageDTO;


@Repository("boardList")
public class BoardDao implements BoardDaoInter{
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void addBoard(BoardDTO vo) {
		ss.insert("board.add", vo);
	}

	@Override
	public int getCnt() {
		return ss.selectOne("board.totalCount");
	}

	@Override
	public BoardDTO getDetail(int num) {
		return ss.selectOne("board.detail", num);
	}

	@Override
	public void updateBoard(BoardDTO vo) {
		ss.update("board.update", vo);
		
	}

	@Override
	public void deleteBoard(int num) {
		ss.delete("board.del", num);
		
	}

	@Override
	public List<BoardDTO> getList(SearchPageDTO dto) {
		return ss.selectList("board.listpage", dto);
	}
	
	@Override
	public void cntBoardView(int bnum) {
		ss.update("board.view",bnum);
		
	}
	

}
