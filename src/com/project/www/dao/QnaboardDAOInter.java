package com.project.www.dao;

import java.util.List;


import com.project.www.dto.QnaboardDTO;


public interface QnaboardDAOInter {

	public void addQnaboard(QnaboardDTO qnadto);
	public List<QnaboardDTO> getqnaList(int mnum); 
	public int getCnt();
	public QnaboardDTO getqnaDetail(int num);
	public void upQnaboard(QnaboardDTO vo);
	public void delQnaboard(int inum);
	public QnaboardDTO upQnapage(int inum);
	
}
