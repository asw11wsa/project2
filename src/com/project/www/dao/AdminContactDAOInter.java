package com.project.www.dao;

import java.util.List;

import com.project.www.dto.ContactDTO;
import com.project.www.dto.SearchPageDTO;

public interface AdminContactDAOInter extends PageListInter{
	public int getCnt(SearchPageDTO dto);
	public List<ContactDTO> listchat(String id);
}
