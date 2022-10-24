package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.CalendarDAO;
import kr.ac.kopo.vo.CalendarVO;

@Service
public class CalendarService {

	
	@Autowired
	private CalendarDAO calendarDAO;
	
	public List<Map<String, Object>> calendarList(String id) {
		List<Map<String, Object>> calendarList = calendarDAO.calendarList(id);
		return calendarList;
	}

	
	public List<Map<String, Object>> historyList(String year, String month, String id) {
		List<Map<String, Object>> historyList = calendarDAO.historyList(year, month, id);

		return historyList;
	}
	
	public int insertCalendar(CalendarVO calendarVO) {
		
		return calendarDAO.insertCalendar(calendarVO);
	}
	
	public void updatePoint(String id, int point) {
		
		calendarDAO.updatePoint(id, 10);
	}
	
	


	}

	

