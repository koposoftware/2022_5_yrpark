package kr.ac.kopo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import kr.ac.kopo.vo.ExerciseVO;

public class ExerciseDaoImpl implements ExerciseDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void updateWalkgoal(ExerciseVO exerciseVO) {
		
        
        sqlSessionTemplate.update("kr.ac.kopo.dao.ExerciseDAO.updateWalkgoal", exerciseVO);
        

	}
	
	@Override
	public List<Map<String, Object>> exercise(String id){
		
		Map<String, Object> param = new HashMap<>();
        param.put("id", id);
        
        List<Map<String, Object>> exercise = sqlSessionTemplate.selectList("kr.ac.kopo.dao.ExerciseDAO.exercise", param);
		
		return exercise;
		
	}
	
	@Override
	public List<Map<String, Object>> selectGoal(String id){
		
		Map<String, Object> param = new HashMap<>();
        param.put("id", id);
        
        List<Map<String, Object>> selectGoal = sqlSessionTemplate.selectList("kr.ac.kopo.dao.ExerciseDAO.selectGoal", param);
        		return selectGoal;
	}

	@Override
	public List<Map<String, Object>> selectSteps(String id){
		
		Map<String, Object> param = new HashMap<>();
		param.put("id", id);
		
		List<Map<String, Object>> selectSteps = sqlSessionTemplate.selectList("kr.ac.kopo.dao.ExerciseDAO.selectSteps", param);
		return selectSteps;
	}
	
	@Override
	public List<Map<String, Object>> selectMonth(String month, String id){
		
		Map<String, Object> param = new HashMap<>();
		param.put("id", id);
		param.put("month", month);
		
		List<Map<String, Object>> selectMonth = sqlSessionTemplate.selectList("kr.ac.kopo.dao.ExerciseDAO.selectMonth", param);
		return selectMonth;
	}
	
	@Override
	public List<Map<String, Object>> selectAvg(String month, String id){
		
		Map<String, Object> param = new HashMap<>();
		param.put("id", id);
		param.put("month", month);
		
		List<Map<String, Object>> selectAvg = sqlSessionTemplate.selectList("kr.ac.kopo.dao.ExerciseDAO.selectAvg", param);
		return selectAvg;
	}

	@Override
	public List<Map<String, Object>> selectTime(String id){
		
		Map<String, Object> param = new HashMap<>();
		param.put("id", id);
		
		List<Map<String, Object>> selectTime = sqlSessionTemplate.selectList("kr.ac.kopo.dao.ExerciseDAO.selectTime", param);
		return selectTime;
	}
	
	@Override
	public void insertPoint(ExerciseVO exerciseVO) {
		
		sqlSessionTemplate.insert("kr.ac.kopo.dao.ExerciseDAO.insertPoint", exerciseVO);
		
	}
	

}
