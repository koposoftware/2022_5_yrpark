package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CardDAO {

	public List<Map<String, Object>> medicalList(String year, String month, String id);
	public List<Map<String,Object>> sum(String year, String month, String id);

}
