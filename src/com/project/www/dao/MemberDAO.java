package com.project.www.dao;

import java.util.Map;

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
	@Override
	public void wrongCntMember(String mid) {
		ss.update("member.wrongCnt",mid);
	}
	@Override
	public void lockMember(Map<String, String> map) {
		ss.update("member.lock",map);
	}
	@Override
	public void cntInit(String mid) {
		ss.update("member.wrongCntInit",mid);
	}
	@Override
	public int getWrong(String mid) {
		return ss.selectOne("member.getWrong",mid);
	}
	@Override
	public String getLock(String mid) {
		return ss.selectOne("member.getLock",mid);
	}
	@Override
	public int getId(String mid) {
		return ss.selectOne("member.getId",mid);
	}
}
