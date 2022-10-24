package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.ExerciseDAO;
import kr.ac.kopo.vo.ExerciseVO;

@Service
public class ExerciseService {
	
	@Autowired
	private ExerciseDAO exerciseDAO;
	
	public void updateWalkgoal(ExerciseVO exerciseVO) {
		
		exerciseDAO.updateWalkgoal(exerciseVO);
	}
	
	public List<Map<String, Object>> exercise(String id) {
		List<Map<String, Object>> exercise = exerciseDAO.exercise(id);
		
		return exercise;
	}
	
	public List<Map<String, Object>> selectGoal(String id) {
		List<Map<String, Object>> selectGoal = exerciseDAO.selectGoal(id);
		
		return selectGoal;
	}
	
	public List<Map<String, Object>> selectSteps(String id) {
		List<Map<String, Object>> selectSteps = exerciseDAO.selectSteps(id);
		
		return selectSteps;
	}
	
	public List<Map<String, Object>> selectMonth(String month, String id) {
		List<Map<String, Object>> selectMonth = exerciseDAO.selectMonth(month, id);
		
		return selectMonth;
	}
	
	public List<Map<String, Object>> selectAvg(String month, String id) {
		List<Map<String, Object>> selectAvg = exerciseDAO.selectAvg(month, id);
		
		return selectAvg;
	}
	public List<Map<String, Object>> selectTime(String id) {
		List<Map<String, Object>> selectTime = exerciseDAO.selectTime(id);
		
		return selectTime;
	}
	
	public void insertPoint(ExerciseVO exerciseVO) {
		
		exerciseDAO.insertPoint(exerciseVO);
	}
}
