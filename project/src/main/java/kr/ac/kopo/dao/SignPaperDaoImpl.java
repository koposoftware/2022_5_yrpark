package kr.ac.kopo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class SignPaperDaoImpl implements SignPaperDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Map<String, Object>> signpaper(String id) {
		Map<String, Object> param = new HashMap<>();
        param.put("id", id);
        
		List<Map<String, Object>> signpaper = sqlSessionTemplate.selectList("kr.ac.kopo.dao.SignPaperDAO.signpaper", id);
		
		return signpaper;
	}

}
