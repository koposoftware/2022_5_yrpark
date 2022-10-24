package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import kr.ac.kopo.vo.InsuranceItemVO;

public class AdminListDaoImpl implements AdminListDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Map<String, Object>> adminList() {
        
        List<Map<String, Object>> adminList = sqlSessionTemplate.selectList("kr.ac.kopo.dao.AdminListDAO.adminList");
		
		return adminList;
		
	}
	
	@Override
	public List<Map<String, Object>> insuranceAll() {
		
		List<Map<String, Object>> insuranceAll = sqlSessionTemplate.selectList("kr.ac.kopo.dao.AdminListDAO.insuranceAll");
		
		return insuranceAll;
		
	}
	
	@Override
	public void deleteItem(InsuranceItemVO insuranceItemVO) {
		sqlSessionTemplate.delete("kr.ac.kopo.dao.AdminListDAO.deleteItem", insuranceItemVO);
	}
	
	@Override
	public void updateItem(InsuranceItemVO insuranceItemVO) {
		sqlSessionTemplate.update("kr.ac.kopo.dao.AdminListDAO.updateItem", insuranceItemVO);
	}
	
	

}
