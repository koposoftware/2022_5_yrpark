package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class AdminDashDaoImpl implements AdminDashDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Map<String, Object>> agecnt() {

		List<Map<String, Object>> agecnt = sqlSessionTemplate.selectList("kr.ac.kopo.dao.AdminDashDAO.agecnt");
		
		return agecnt;
	}
	
	@Override
	public List<Map<String, Object>> genderCnt() {
		
		List<Map<String, Object>> genderCnt = sqlSessionTemplate.selectList("kr.ac.kopo.dao.AdminDashDAO.genderCnt");
		
		return genderCnt;
	}

}
