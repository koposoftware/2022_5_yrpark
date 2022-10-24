package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.dao.MemberDAO;
import kr.ac.kopo.vo.MemberVO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	
	public MemberVO login(MemberVO member) {
	
		return memberDAO.selectUser(member);
	}
	
	public List<MemberVO> selectPoint(MemberVO member) {
		return memberDAO.selectPoint(member);
	}

	public List<MemberVO> selectCheck(MemberVO member) {
		
		return memberDAO.selectCheck(member);
	}


	@Transactional
	public void updatePoint(MemberVO member) {
		memberDAO.updatePoint(member);

	}
	
	
	
	
	
	
}
