package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.InsuranceItemDAO;


@Service
public class InsuranceItemService {

	@Autowired
	private InsuranceItemDAO insuranceitemDAO;
	
	public List<Map<String, Object>> insuranceItem(String id) {
		List<Map<String, Object>> insuranceItem = insuranceitemDAO.insuranceItem(id);
		
		return insuranceItem;
	}

	

	public List<Map<String, Object>> selectPoint(String id) {
		List<Map<String, Object>> selectPoint = insuranceitemDAO.selectPoint(id);
		
		return selectPoint;
	}

	
	 public List<Map<String, Object>> getOneNo(String no) { 
		 List<Map<String, Object>> item = insuranceitemDAO.selectByNo(no); 
		 return item;
	 }
	
	
	
	
}
