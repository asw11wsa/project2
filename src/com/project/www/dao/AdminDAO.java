package com.project.www.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.www.dto.AdminDTO;
@Repository
public class AdminDAO implements AdminDAOInter {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public int logingCheck(AdminDTO adto) {
		return ss.selectOne("admin.idcheck",adto);
	}

	@Override
	public AdminDTO loginAfter(AdminDTO adto) {
		return ss.selectOne("admin.loginkeep",adto);
	}

}
