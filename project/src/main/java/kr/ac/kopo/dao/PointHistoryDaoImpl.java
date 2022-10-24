package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class PointHistoryDaoImpl implements PointHistoryDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Map<String, Object>> pointsms() {
   
		List<Map<String, Object>> pointsms = sqlSessionTemplate.selectList("kr.ac.kopo.dao.PointHistoryDAO.pointsms");
		
		return pointsms;
	
	}

}
