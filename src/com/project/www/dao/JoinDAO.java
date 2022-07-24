package com.project.www.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.www.dto.AdminDTO;
import com.project.www.dto.MemberDTO;

@Repository
public class JoinDAO implements JoinDAOInter {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public boolean addMember(MemberDTO dto) {
		try {
			ss.insert("join.add", dto);
			System.out.println("성공");
			return true;
		} catch (Exception e) {
			System.out.println("실패");
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public int checkId(String mid) {
		return ss.selectOne("join.idchk", mid);
	}
	@Override
	public void addAdmin(AdminDTO dto) {
		ss.insert("join.addAdmin",dto);
		
	}

	@Override
	public int checkAdminId(String aid) {
		return ss.selectOne("join.idchkAdmin",aid);
	}

}
