package kr.ac.kopo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CheckUpDaoImpl implements CheckUpDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Map<String, Object>> checkUpList(String year, String id) {
		Map<String, Object> param = new HashMap<>();
        param.put("year", year);
        param.put("id", id);
	
	List<Map<String, Object>> checkUpList = sqlSessionTemplate.selectList("kr.ac.kopo.dao.CheckUpDAO.checkUpList", param);
	
	return checkUpList;
	}
	
	@Override
	public List<Map<String, Object>> selectAge(String id) {
		Map<String, Object> param = new HashMap<>();
        param.put("id", id);
        
        List<Map<String, Object>> selectAge = sqlSessionTemplate.selectList("kr.ac.kopo.dao.InsuranceItemDAO.selectAge", param);
        return selectAge;
	}

}
