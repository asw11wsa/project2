package com.project.www.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.www.dto.LoginoutLogDTO;

@Repository
public class LoginoutLogDAO implements LoginoutLogDAOInter {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public void addLog(LoginoutLogDTO logdto) {
		ss.insert("log.addlog",logdto);
	}

	@Override
	public int countDay(String lid) {
		return ss.selectOne("log.lastlog",lid);
	}

}
