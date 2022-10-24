package kr.ac.kopo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import kr.ac.kopo.vo.InsuranceSignVO;


public class InsuranceSignDaoImpl implements InsuranceSignDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<Map<String, Object>> insuranceList(String id) {
				
				Map<String, Object> param = new HashMap<>();
		        param.put("id", id);
		        
		        List<Map<String, Object>> insuranceList = sqlSessionTemplate.selectList("kr.ac.kopo.dao.InsuranceSignDAO.insuranceList", param);
				
				return insuranceList;
			}

	@Override
	public List<Map<String, Object>> insuranceFee(String id) {
		
		Map<String, Object> param = new HashMap<>();
		param.put("id", id);
		
		List<Map<String, Object>> insuranceFee = sqlSessionTemplate.selectList("kr.ac.kopo.dao.InsuranceSignDAO.insuranceFee", param);
		
		return insuranceFee;
	}

	@Override
	public List<Map<String, Object>> insuranceSum(String id) {
		
		Map<String, Object> param = new HashMap<>();
		param.put("id", id);
		
		List<Map<String, Object>> insuranceSum = sqlSessionTemplate.selectList("kr.ac.kopo.dao.InsuranceSignDAO.insuranceSum", param);
		
		return insuranceSum;
	}

	@Override
	public List<Map<String, Object>> insuranceRank() {
	
		List<Map<String, Object>> insuranceRank = sqlSessionTemplate.selectList("kr.ac.kopo.dao.InsuranceSignDAO.insuranceRank");
		
		return insuranceRank;
	}
	
	@Override
	public void insertInsurance(InsuranceSignVO insuranceSignVO) {
		
		sqlSessionTemplate.insert("kr.ac.kopo.dao.InsuranceSignDAO.insertInsurance", insuranceSignVO);
		
	}

}
