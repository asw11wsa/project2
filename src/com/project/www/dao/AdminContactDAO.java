package com.project.www.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.www.dto.ContactDTO;
import com.project.www.dto.SearchPageDTO;
import com.project.www.dto.SuperDTO;

@Repository("chatList")
public class AdminContactDAO implements AdminContactDAOInter{

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public List<? extends SuperDTO> getList(SearchPageDTO dto) {
		return ss.selectList("contact.adminlist", dto);
	}

	@Override
	public int getCnt(SearchPageDTO dto) {
		return ss.selectOne("contact.admincnt", dto);
	}

	@Override
	public List<ContactDTO> listchat(String id) {
		return ss.selectList("contact.list", id);
	}

}
