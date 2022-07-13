package com.project.www.dao;

import java.util.List;
import java.util.Map;

import com.project.www.dto.SuperDTO;




public interface PageListInter {
	public List<? extends SuperDTO> getList(Map<String, Integer> map);
}
