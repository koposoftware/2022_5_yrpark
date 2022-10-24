package kr.ac.kopo.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.Util;
import kr.ac.kopo.service.ExerciseService;
import kr.ac.kopo.service.MemberService;
import kr.ac.kopo.vo.ExerciseVO;
import kr.ac.kopo.vo.MemberVO;

@Controller
public class ExerciseController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ExerciseService exerciseService;
	
	@RequestMapping(value = "/exerciseMission", method = RequestMethod.GET)
	public String getId(HttpServletRequest req, Model model, HttpSession session,
			@ModelAttribute MemberVO member, ExerciseVO exerciseVO) {
		
	    String month = req.getParameter("month");
		String id = req.getParameter("id");

		MemberVO memberVO = (MemberVO) session.getAttribute("loginVO");
		id = memberVO.getId();
		
		// 년월 정보
		 
		  if(month == null || month.equals("")) { 
			  month = Util.getStringNowMonth(); 
			  }
	  
		List<Map<String, Object>> exercise = exerciseService.exercise(id);
	       
	       model.addAttribute("exercise", exercise);
	      
	       
	       List<Map<String, Object>>  selectGoal = exerciseService.selectGoal(id);
	       
	       model.addAttribute("selectGoal", selectGoal);

	       List<Map<String, Object>>  selectSteps = exerciseService.selectSteps(id);
	       
	       model.addAttribute("selectSteps", selectSteps);
	       
	       List<Map<String, Object>>  selectMonth = exerciseService.selectMonth(month, id);
	       
	       model.addAttribute("selectMonth", selectMonth);
	       
	       List<Map<String, Object>>  selectAvg = exerciseService.selectAvg(month, id);
	       
	       model.addAttribute("selectAvg", selectAvg);

	       List<Map<String, Object>>  selectTime = exerciseService.selectTime(id);
	       
	       model.addAttribute("selectTime", selectTime);
	      System.out.println(selectTime);
	       

		return "mission/exerciseMission";
	}
	
/*	@PostMapping(value = "updateWalkgoal")
	public String getupdate() {
		
		ExerciseVO exerciseVO = new ExerciseVO();
		exerciseService.updateWalkgoal(exerciseVO);
		
		return "redirect:/mission/exerciseMission";
	}*/
	
	@PostMapping("/pointProc")
	   public ModelAndView insurancePoint(@ModelAttribute ExerciseVO exercise, Model model, HttpSession session) {

	         MemberVO member = (MemberVO) session.getAttribute("loginVO");
	         String id = member.getId();
	         exercise.setId(id);
	         
	         ModelAndView mav = new ModelAndView("redirect:/exerciseMission");
	            mav.addObject("exercise",exercise);
	            exerciseService.insertPoint(exercise);
	         
	         return mav;
	      }
	   }

