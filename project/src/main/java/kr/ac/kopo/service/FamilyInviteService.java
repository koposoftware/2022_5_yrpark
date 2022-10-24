package kr.ac.kopo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.FamilyInviteDAO;
import kr.ac.kopo.vo.MemberVO;

@Service
public class FamilyInviteService {

	@Autowired
	private FamilyInviteDAO familyInviteDAO;
	
	public void updateGroup(MemberVO memberVO) {
		
		familyInviteDAO.updateGroup(memberVO);
	}
}
