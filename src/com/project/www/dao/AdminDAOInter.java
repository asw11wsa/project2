package com.project.www.dao;

import com.project.www.dto.AdminDTO;

public interface AdminDAOInter {
	
	public int logingCheck(AdminDTO adto);
	public AdminDTO loginAfter(AdminDTO adto);
	
}
