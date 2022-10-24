package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.AdminListDAO;
import kr.ac.kopo.vo.InsuranceItemVO;

@Service
public class AdminListService {

	@Autowired
	private AdminListDAO adminListDAO;
	
	
	public List<Map<String, Object>> insuranceAll() {
		List<Map<String, Object>> insuranceAll = adminListDAO.insuranceAll();
		
		return insuranceAll;
	}
	
	public List<Map<String, Object>> adminList() {
		List<Map<String, Object>> adminList = adminListDAO.adminList();
		return adminList;
	}
	
	public void deleteItem(InsuranceItemVO insuranceItemVO) {
		
		adminListDAO.deleteItem(insuranceItemVO);
	}
	
	public void updateItem(InsuranceItemVO insuranceItemVO) {
		
		adminListDAO.updateItem(insuranceItemVO);
	}
}
