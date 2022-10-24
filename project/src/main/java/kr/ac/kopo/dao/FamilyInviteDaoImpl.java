package kr.ac.kopo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import kr.ac.kopo.vo.MemberVO;

public class FamilyInviteDaoImpl implements FamilyInviteDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void updateGroup(MemberVO memberVO) {
		
			sqlSessionTemplate.update("kr.ac.kopo.dao.FamilyInviteDAO.updateGroup", memberVO);
			
		}

	}


