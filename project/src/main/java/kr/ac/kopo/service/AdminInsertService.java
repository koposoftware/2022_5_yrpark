package kr.ac.kopo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.AdminInsertDAO;
import kr.ac.kopo.vo.InsuranceItemVO;

@Service
public class AdminInsertService {

	@Autowired
	private AdminInsertDAO adminInsertDAO;
	
	public void insertItem(InsuranceItemVO insuranceitemVO) {
		
		adminInsertDAO.insertItem(insuranceitemVO);
	}
}
