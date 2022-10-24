package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CheckUpDAO {

	public List<Map<String, Object>> checkUpList(String year, String id);
	public List<Map<String, Object>> selectAge(String id);
}
