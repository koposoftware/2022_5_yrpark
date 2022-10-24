package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.InsuranceAllDAO;

@Service
public class InsuranceAllService {

	@Autowired
	private InsuranceAllDAO insuranceallDAO;
	
	public List<Map<String, Object>> insuranceAll() {
		List<Map<String, Object>> insuranceAll = insuranceallDAO.insuranceAll();
		
		return insuranceAll;
	}
}
