package kr.ac.kopo.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.ac.kopo.vo.InsuranceItemVO;

@Mapper
public interface AdminInsertDAO {

	public void insertItem(InsuranceItemVO insuranceitemVO);
}
