package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.ac.kopo.vo.ExerciseVO;

@Mapper
public interface ExerciseDAO {

	public void updateWalkgoal(ExerciseVO exerciseVO);
	
	public List<Map<String, Object>> exercise(String id);
	public List<Map<String, Object>> selectGoal(String id);
	public List<Map<String, Object>> selectSteps(String id);
	public List<Map<String, Object>> selectMonth(String month, String id);
	public List<Map<String, Object>> selectAvg(String month, String id);
	public List<Map<String, Object>> selectTime(String id);
	public void insertPoint(ExerciseVO exerciseVO);
}
