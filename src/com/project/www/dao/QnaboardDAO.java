package com.project.www.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.www.dto.QnaboardDTO;
import com.project.www.dto.SearchPageDTO;
import com.project.www.dto.SuperDTO;

@Repository
public class QnaboardDAO implements QnaboardDAOInter{
	@Autowired
	private SqlSessionTemplate ss;
	@Override
	public int getCnt() {
		return ss.selectOne("qnaboard.totalCount");
	}
	@Override
	public void addQnaboard(QnaboardDTO qnadto) {
		ss.insert("qnaboard.add", qnadto);	
	}
	@Override
	public QnaboardDTO getqnaDetail(int num) {	
		return ss.selectOne("qnaboard.detail", num);
	}
	@Override
	public List<QnaboardDTO> getqnaList(int mnum) {	
		return ss.selectList("qnaboard.list", mnum);
	}
	@Override
	public void upQnaboard(QnaboardDTO vo) {
		ss.update("qnaboard.update", vo);	
	}
	@Override
	public void delQnaboard(int inum) {
		ss.delete("qnaboard.delete", inum);	
	}
	@Override
	public QnaboardDTO upQnapage(int inum) {	
		return ss.selectOne("qnaboard.upqnapage", inum);
	}

}
