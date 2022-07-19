package com.project.www.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.www.dto.ContactDTO;

@Repository
public class ContactDAO implements ContactDAOInter{
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void insert(ContactDTO dto) {
		ss.insert("contact.add", dto);
	}

	@Override
	public List<ContactDTO> listchat(String id) {
		return ss.selectList("contact.list", id);
	}

	@Override
	public int getUserStatusCnt(String id) {
		return ss.selectOne("contact.usercnt", id);
	}

	@Override
	public void changeUserStatus(String id) {
		ss.update("contact.userstatus", id);
	}

}
