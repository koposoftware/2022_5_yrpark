package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.AdminDashDAO;

@Service
public class AdminDashService {

	@Autowired
	private AdminDashDAO adminDashDAO;
	
	
	public List<Map<String, Object>> agecnt() {
		List<Map<String, Object>> agecnt = adminDashDAO.agecnt();
		
		return agecnt;
	}
	
	public List<Map<String, Object>> genderCnt() {
		List<Map<String, Object>> genderCnt = adminDashDAO.genderCnt();
		
		return genderCnt;
	}
}
