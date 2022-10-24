package kr.ac.kopo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import kr.ac.kopo.vo.InsuranceItemVO;

public class AdminInsertDaoImpl implements AdminInsertDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void insertItem(InsuranceItemVO insuranceitemVO) {
		sqlSessionTemplate.insert("kr.ac.kopo.dao.AdminInsertDAO.insertItem", insuranceitemVO);

	}

}
