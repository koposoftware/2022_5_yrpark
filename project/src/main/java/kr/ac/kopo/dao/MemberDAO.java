package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.ac.kopo.vo.MemberVO;

@Mapper
public interface MemberDAO {
	
	public MemberVO selectUser(MemberVO memberVO);
	public List<MemberVO> selectPoint(MemberVO memberVO);
	public List<MemberVO> selectCheck(MemberVO memberVO);
	public List<MemberVO> selectAge(MemberVO memberVO);
	public void updatePoint(MemberVO memberVO);
	
}