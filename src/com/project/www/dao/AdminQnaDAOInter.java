package com.project.www.dao;

import com.project.www.dto.QnaboardDTO;
import com.project.www.dto.SearchPageDTO;

public interface AdminQnaDAOInter extends PageListInter{
	public int getCnt(SearchPageDTO dto);
	public QnaboardDTO qnaDetail(int inum);
	public void qnaUpdate(QnaboardDTO dto);
}
