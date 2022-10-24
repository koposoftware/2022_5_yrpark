package kr.ac.kopo.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.Util;
import kr.ac.kopo.service.CalendarService;
import kr.ac.kopo.vo.CalendarVO;
import kr.ac.kopo.vo.MemberVO;

@Controller
public class CalendarController {

	/*
	 * @GetMapping("/recordMission") public String list() { return
	 * "mission/recordMission"; }
	 */
	@Autowired
	private CalendarService calendarService;
	
	@RequestMapping(value = "/recordMission", method = RequestMethod.GET)
	public String calendarList(HttpServletRequest req, Model model, HttpSession session,
			@ModelAttribute MemberVO member, CalendarVO calendar) {

		String year = req.getParameter("year");
	    String month = req.getParameter("month");
	    String id = req.getParameter("id");

		
		  if(year == null || year.equals("")) { 
			  year = Util.getStringNowYear(); 
			  } 
		  if(month == null || month.equals("")) { 
			  month = Util.getStringNowMonth(); 
			  }

		MemberVO memberVO = (MemberVO) session.getAttribute("loginVO");
		id = memberVO.getId();
		
		List<Map<String, Object>> historyList = calendarService.historyList(year, month, id);
		
		model.addAttribute("historyList", historyList);
		System.out.println(historyList);

		return "mission/recordMission";
	}
	
	@ResponseBody
	@GetMapping("calendarPlan")
	public List<Map<String, Object>> calendarList2(HttpServletRequest req, Model model, HttpSession session) {
		
		String id = req.getParameter("id");

		MemberVO memberVO = (MemberVO) session.getAttribute("loginVO");
		id = memberVO.getId();
		
		List<Map<String, Object>> calendarList = calendarService.calendarList(id);
		/*
		 * for(Map<String,Object> data : calendarList) { Set<String> keys =
		 * data.keySet(); for(String key:keys) {
		 * 
		 * } }
		 */
		
		model.addAttribute("calendarList", calendarList);
		System.out.println("calendarlist : " + calendarList);
		
		return calendarList;
	}
	
	   @PostMapping("/mission/proc")
	   public String missionProc(@ModelAttribute("calendarVO") CalendarVO calendar, BindingResult result, Model model,
	         HttpSession session) {

	      if (result.hasErrors()) {
	         return "mission/proc";
	      } else {
	         MemberVO member = (MemberVO) session.getAttribute("loginVO");
	         String id = member.getId();
	         calendar.setId(id);

	         int serviceResult = calendarService.insertCalendar(calendar);
	         model.addAttribute("result", serviceResult);
	         return "mission/proc";
	      }
	   }
	
	
	
	
	       
	   
	
}
