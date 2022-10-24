package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.FamilyCareDAO;

@Service
public class FamilyCareService {

	@Autowired
	private FamilyCareDAO familyCareDao;
	
	public List<Map<String, Object>> familyList(String id) {
		List<Map<String, Object>> familyList = familyCareDao.familyList(id);
		
		return familyList;
	}
	public List<Map<String, Object>> familyInsu(String id) {
		List<Map<String, Object>> familyInsu = familyCareDao.familyInsu(id);
		
		return familyInsu;
	}
	
	public List<Map<String, Object>> countInsu() {
		List<Map<String, Object>> countInsu = familyCareDao.countInsu();
		
		return countInsu;
	}
	

}
