package com.project.www.dao;

import com.project.www.dto.MemberDTO;

public interface JoinDAOInter {

	public boolean addMember(MemberDTO dto);
	public int checkId(String mid);
	
}
