package kr.ac.kopo.controller;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.Util;
import kr.ac.kopo.service.CheckUpService;
import kr.ac.kopo.service.MemberService;
import kr.ac.kopo.vo.CheckUpVO;
import kr.ac.kopo.vo.MemberVO;

@Controller
public class CheckUpController {

	@Autowired
	private CheckUpService checkUpService;
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/myHealthCare")
	public String checkUpList(HttpServletRequest req, Model model, @ModelAttribute CheckUpVO check, MemberVO member, HttpSession session) {
				
		// 년월 정보
		String year = req.getParameter("year");
	    String id = req.getParameter("id");
		
	    if(year == null || year.equals("")) { 
			  year = Util.getStringNowYear(); 
			  } 
	    
	    // 아이디 받아오기
	    MemberVO memberVO = (MemberVO) session.getAttribute("loginVO");
	    id= memberVO.getId();
	    
	    // 나이 정보
	 // 건강검진 결과
	    List<Map<String, Object>> selectAge = checkUpService.selectAge(id);
		for(Map<String, Object> data : selectAge) {
			Set<String> keys = data.keySet();
			for(String key : keys) {
			
			}
		}
	    model.addAttribute("selectAge", selectAge);
	    System.out.println(selectAge);
	    
	    // 건강검진 결과
	    List<Map<String, Object>> checkUpList = checkUpService.checkUpList(year, id);
		for(Map<String, Object> data : checkUpList) {
			Set<String> keys = data.keySet();
			for(String key : keys) {
			
			}
		}
		
		
			
		model.addAttribute("checkUpList", checkUpList);
		System.out.println(checkUpList);
		
	
		
		return "/healthCare/myHealthCare";
		
	}
}
