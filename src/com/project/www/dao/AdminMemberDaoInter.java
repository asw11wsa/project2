package com.project.www.dao;

import com.project.www.dto.MemberDTO;
import com.project.www.dto.SearchPageDTO;

public interface AdminMemberDaoInter extends PageListInter{
	public int getCnt(SearchPageDTO dto);
	public MemberDTO getDetail(int num);
	public void updateMember(MemberDTO dto);
	public void deleteMember(int num);
}
