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
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.ac.kopo.Util;
import kr.ac.kopo.service.CardService;
import kr.ac.kopo.service.MemberService;
import kr.ac.kopo.vo.CardVO;
import kr.ac.kopo.vo.MemberVO;

@Controller
@SessionAttributes("id")
public class CardController {

	@Autowired
	private CardService cardService;
	@Autowired
	private MemberService memberService;
	
	/*
	 * @GetMapping("/healthPage") public String selectInfo(MemberVO member, Model
	 * model){
	 * 
	 * model.addAttribute("memberList", memberService.selectInfo(member)); return
	 * "mypage/healthPage"; }
	 */
	
	@RequestMapping("/healthPage")
	public String medicalList(HttpServletRequest req, Model model, @ModelAttribute CardVO card, MemberVO member, HttpSession session) {
		// 포인트 정보
		model.addAttribute("memberList", memberService.selectPoint(member));
		
		// 년월 정보
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
	       System.out.println("userid : " + memberVO);
	       id= memberVO.getId();
	       System.out.println("id : " + id);
	       
	       
	    // list 정보
	       
		
		  List<Map<String, Object>> sum = cardService.sum(year, month, id);
		  for(Map<String,Object> data : sum) { Set<String> keys = data.keySet();
		  for(String key:keys) {
		  
		  } } model.addAttribute("sum", sum);
		  
		  System.out.println(year); System.out.println(sum);
		 

	       
		List<Map<String, Object>> medicalList = cardService.medicalList(year, month, id);
		for(Map<String, Object> data : medicalList) {
			Set<String> keys = data.keySet();
			for(String key : keys) {
			
			}
		}
		
		model.addAttribute("medicalList", medicalList);
		System.out.println(medicalList);
		return "mypage/healthPage";
	}
}
