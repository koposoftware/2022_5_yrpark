package kr.ac.kopo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.vo.CalendarVO;

@Repository
public class CalendarDaoImpl implements CalendarDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Map<String, Object>> calendarList(String id) {
		Map<String, Object> param = new HashMap<>();
		param.put("id", id);
        
        List<Map<String, Object>> calendarList = sqlSessionTemplate.selectList("kr.ac.kopo.dao.CalendarDAO.calendarList", param);
		
		return calendarList;

	
	}
	
	@Override
	public List<Map<String, Object>> historyList(String year, String month, String id) {
		Map<String, Object> param = new HashMap<>();
		param.put("year", year);
        param.put("month", month);
		param.put("id", id);
		
		List<Map<String, Object>> historyList = sqlSessionTemplate.selectList("kr.ac.kopo.dao.CalendarDAO.historyList", param);
		
		return historyList;
		
		
	}
	
	@Override
	public int insertCalendar(CalendarVO calendarVO) {
		
		int insertCalendar = sqlSessionTemplate.insert("kr.ac.kopo.dao.CalendarDAO.insertCalendar", calendarVO);
		
		return insertCalendar;
	}
	
	@Override
	public void updatePoint(String id, int point) {
		Map<String, Object> param = new HashMap<>();
		param.put("id", id);
		param.put("point", point);
		sqlSessionTemplate.update("kr.ac.kopo.dao.CalendarDAO.updatePoint", param);
	}
	
	
}
