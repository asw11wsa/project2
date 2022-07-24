package com.project.www.dao;

import com.project.www.dto.LoginoutLogDTO;

public interface LoginoutLogDAOInter {

	public void addLog(LoginoutLogDTO logdto);
	public int countDay(String lid);
	
}
