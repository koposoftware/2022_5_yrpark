package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.InsuranceSignDAO;
import kr.ac.kopo.vo.InsuranceSignVO;


@Service
public class InsuranceSignService {

	@Autowired
	private InsuranceSignDAO insuracnesignDAO;

	public List<Map<String, Object>> insuranceList(String id) {
		List<Map<String, Object>> insuranceList = insuracnesignDAO.insuranceList(id);
		
		return insuranceList;
	}
	
	public List<Map<String, Object>> insuranceFee(String id) {
		List<Map<String, Object>> insuranceFee = insuracnesignDAO.insuranceFee(id);
		
		return insuranceFee;
	}

	public List<Map<String, Object>> insuranceSum(String id) {
		List<Map<String, Object>> insuranceSum = insuracnesignDAO.insuranceSum(id);
		
		return insuranceSum;
	}
	
	public List<Map<String, Object>> insuranceRank() {
		List<Map<String, Object>> insuranceRank = insuracnesignDAO.insuranceRank();
		
		return insuranceRank;
	}
	
	public void insertInsurance(InsuranceSignVO insuranceSignVO) {
		
		insuracnesignDAO.insertInsurance(insuranceSignVO);
	}
	
}
