package com.project.www.dao;

import java.util.Map;

import com.project.www.dto.MemberDTO;

public interface MemberDAOInter {

	public int logingCheck(MemberDTO mdto);
	public MemberDTO loginAfter(MemberDTO mdto);
	public MemberDTO myPage(int mnum);
	public void upMember(MemberDTO vo);
	public void delMember(int mnum);
	public int getCnt();
	public void wrongCntMember(String mid);
	public void lockMember(Map<String, String> map);
	public void cntInit(String mid);
	public int getWrong(String mid);
	public String getLock(String mid);
	public int getId(String mid);
}
