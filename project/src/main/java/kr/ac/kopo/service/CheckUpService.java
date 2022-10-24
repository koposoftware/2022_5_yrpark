package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.CheckUpDAO;

@Service
public class CheckUpService {

	@Autowired
	private CheckUpDAO checkUpDAO;
	
	public List<Map<String, Object>> checkUpList(String year, String id) {
		List<Map<String, Object>> checkUpList = checkUpDAO.checkUpList(year, id);
		return checkUpList;
	}

	public List<Map<String, Object>> selectAge(String id) {
		List<Map<String, Object>> selectAge = checkUpDAO.selectAge(id);
		return selectAge;
	}
}
