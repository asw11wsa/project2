package com.project.www.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.www.dto.MemberDTO;
import com.project.www.dto.SearchPageDTO;
@Repository("adminMemberList")
public class AdminMemberDao implements AdminMemberDaoInter{

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public List<MemberDTO> getList(SearchPageDTO dto) {
		return ss.selectList("admin.memlist", dto);
	}

	@Override
	public int getCnt(SearchPageDTO dto) {
		return ss.selectOne("admin.totalCount",dto);
	}

	@Override
	public MemberDTO getDetail(int num) {
		return ss.selectOne("admin.detail", num);
	}

	@Override
	public void updateMember(MemberDTO dto) {
		ss.update("admin.update", dto);
	}

	@Override
	public void deleteMember(int num) {
		ss.delete("admin.delete", num);
	}

}
