package kr.ac.kopo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CardDaoImpl implements CardDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Map<String, Object>> medicalList(String year, String month, String id) {
		 Map<String, Object> param = new HashMap<>();
	        param.put("year", year);
	        param.put("month", month);
	        param.put("id", id);
		
		List<Map<String, Object>> medicalList = sqlSessionTemplate.selectList("kr.ac.kopo.dao.CardDAO.medicalList", param);
		
		return medicalList;
	}
	
	@Override
   public List<Map<String, Object>> sum(String year, String month, String id) {
      Map<String, Object> param = new HashMap<>();
        param.put("year", year);
        param.put("month", month);
        param.put("id", id);
        
      List<Map<String,Object>> sum = sqlSessionTemplate.selectList("kr.ac.kopo.dao.CardDAO.sum", param);
      
      return sum;
   }
	

}
