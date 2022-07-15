package com.project.www.dao;

import com.project.www.dto.MemberDTO;

public interface MemberDAOInter {

	public int logingCheck(MemberDTO mdto);
	public MemberDTO loginAfter(MemberDTO mdto);
	public MemberDTO myPage(int mnum);
	public void upMember(MemberDTO vo);
	public void delMember(int mnum);
	public int getCnt();
}
