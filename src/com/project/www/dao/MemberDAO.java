package com.project.www.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.www.dto.MemberDTO;
@Repository
public class MemberDAO implements MemberDAOInter{
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public int logingCheck(MemberDTO mdto) {
		return ss.selectOne("member.idcheck", mdto);
	}

	@Override
	public MemberDTO loginAfter(MemberDTO mdto) {
		return ss.selectOne("member.loginkeep", mdto);
	}

	@Override
	public MemberDTO myPage(int mnum) {
		return ss.selectOne("member.mypage", mnum);
	}

	@Override
	public void upMember(MemberDTO vo) {
		ss.update("member.update", vo);
	}

	@Override
	public void delMember(int mnum) {
		ss.delete("member.delete", mnum);
	}

	@Override
	public int getCnt() {
		int cnt = ss.selectOne("member.totalCount");
		return cnt;
	}	
}
