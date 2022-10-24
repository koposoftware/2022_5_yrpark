package kr.ac.kopo.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.ac.kopo.vo.MemberVO;

@Mapper
public interface FamilyInviteDAO {

	public void updateGroup(MemberVO memberVO);
}
