package kr.ac.kopo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class FamilyCareDaoImpl implements FamilyCareDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Map<String, Object>> familyList(String id) {
		Map<String, Object> param = new HashMap<>();
        param.put("id", id);
        
        List<Map<String, Object>> familyList = sqlSessionTemplate.selectList("kr.ac.kopo.dao.FamilyCareDAO.familyList", param);
		
		return familyList;
	}
	
	@Override
	public List<Map<String, Object>> familyInsu(String id) {
		Map<String, Object> param = new HashMap<>();
		param.put("id", id);
		
		List<Map<String, Object>> familyInsu = sqlSessionTemplate.selectList("kr.ac.kopo.dao.FamilyCareDAO.familyInsu", param);
		
		return familyInsu;
	}
	
	@Override
	public List<Map<String, Object>> countInsu() {
		
		
		List<Map<String, Object>> countInsu = sqlSessionTemplate.selectList("kr.ac.kopo.dao.FamilyCareDAO.countInsu");
		
		return countInsu;
	}

}
