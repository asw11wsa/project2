package com.project.www.dao;

import com.project.www.dto.AdminDTO;
import com.project.www.dto.MemberDTO;

public interface JoinDAOInter {

	public boolean addMember(MemberDTO dto);
	public int checkId(String mid);
	public void addAdmin(AdminDTO dto);
	public int checkAdminId(String aid);
	
}
