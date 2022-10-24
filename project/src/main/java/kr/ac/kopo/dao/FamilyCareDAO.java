package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FamilyCareDAO {

	public List<Map<String, Object>> familyList(String id);
	public List<Map<String, Object>> familyInsu(String id);
	public List<Map<String, Object>> countInsu();
}
