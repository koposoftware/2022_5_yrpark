package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class MemberMailDaoImpl implements MemberMailDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<Map<String, Object>> memberMail() {
				
	        List<Map<String, Object>> memberMail = sqlSessionTemplate.selectList("kr.ac.kopo.dao.MemberMailDAO.memberMail");
	
		return null;
	}

}
