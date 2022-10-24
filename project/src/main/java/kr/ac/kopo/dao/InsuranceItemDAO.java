package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InsuranceItemDAO {

	public List<Map<String, Object>> insuranceItem(String id);
	public List<Map<String, Object>> selectByNo(String no);
	public List<Map<String, Object>> selectPoint(String id);
	
}
