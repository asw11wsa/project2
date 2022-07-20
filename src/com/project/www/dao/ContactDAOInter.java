package com.project.www.dao;

import java.util.List;

import com.project.www.dto.ContactDTO;

public interface ContactDAOInter {
	public void insert(ContactDTO dto);
	public List<ContactDTO> listchat(String id);
	public int getUserStatusCnt(String id);
	public void changeUserStatus(String id);
	public void changeAdminStatus(String id);
}
