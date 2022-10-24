package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class InsuranceAllDaoImpl implements InsuranceAllDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Map<String, Object>> insuranceAll() {

		List<Map<String, Object>> insuranceAll = sqlSessionTemplate.selectList("kr.ac.kopo.dao.InsuranceAllDAO.insuranceAll");
		
		return insuranceAll;
	}

}
