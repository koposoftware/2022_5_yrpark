package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminDashDAO {

	List<Map<String, Object>> agecnt();
	List<Map<String, Object>> genderCnt();
}
