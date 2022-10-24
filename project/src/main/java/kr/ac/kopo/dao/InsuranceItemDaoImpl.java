package kr.ac.kopo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class InsuranceItemDaoImpl implements InsuranceItemDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Map<String, Object>> insuranceItem(String id) {
		Map<String, Object> param = new HashMap<>();
        param.put("id", id);
        
        List<Map<String, Object>> insuranceItem = sqlSessionTemplate.selectList("kr.ac.kopo.dao.InsuranceItemDAO.insuranceItem", param);
		
		return insuranceItem;
	}
	

	
	@Override
	public List<Map<String, Object>> selectPoint(String id) {
		Map<String, Object> param = new HashMap<>();
		param.put("id", id);
		
		List<Map<String, Object>> selectPoint = sqlSessionTemplate.selectList("kr.ac.kopo.dao.InsuranceItemDAO.selectPoint", param);
		
		return selectPoint;
	}
	
	@Override
	public List<Map<String, Object>> selectByNo(String no) {
		Map<String, Object> param = new HashMap<>();
        param.put("no", no);
        
        List<Map<String, Object>> item = sqlSessionTemplate.selectOne("kr.ac.kopo.dao.InsuranceItemDAO.selectByNo", no);
		return item;
	}
	

}
