package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.ac.kopo.vo.CalendarVO;

@Mapper
public interface CalendarDAO {

	public List<Map<String, Object>> calendarList(String id);
	public List<Map<String, Object>> historyList(String year, String month, String id);
	public int insertCalendar(CalendarVO calendarVO);
	public void updatePoint(String id, int point);
}
