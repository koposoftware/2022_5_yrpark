package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SignPaperDAO {

	public List<Map<String, Object>> signpaper(String id);
}
