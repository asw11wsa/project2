package com.project.www.dao;




import com.project.www.dto.BoardDTO;

public interface BoardDaoInter extends PageListInter{
	public void addBoard(BoardDTO vo);
	public int getCnt();	
	public BoardDTO getDetail(int num);
	public void updateBoard(BoardDTO vo);
	public void deleteBoard(int num);
	public void cntBoardView(int bnum);
}
