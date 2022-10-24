package kr.ac.kopo.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import kr.ac.kopo.service.FamilyCareService;
import kr.ac.kopo.service.MemberService;
import kr.ac.kopo.vo.CheckUpVO;
import kr.ac.kopo.vo.MemberVO;

@Controller
public class FamilyCareController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private FamilyCareService familycareService;
	
	@GetMapping("/familyCare")
	public String familyCare(HttpServletRequest req, Model model, HttpSession session,
			@ModelAttribute MemberVO member, CheckUpVO checkup) {
			
		String id = req.getParameter("id");

		MemberVO memberVO = (MemberVO) session.getAttribute("loginVO");
		id = memberVO.getId();
		
		List<Map<String, Object>> familyList = familycareService.familyList(id);
	       
	       model.addAttribute("familyList", familyList);
	       System.out.println(familyList);
	       
	       List<Map<String, Object>> familyInsu = familycareService.familyInsu(id);
	       
	       model.addAttribute("familyInsu", familyInsu);
	       System.out.println(familyInsu);
	       
	       List<Map<String, Object>> countInsu = familycareService.countInsu();
	       
	       model.addAttribute("countInsu", countInsu);
	       
		return "healthCare/familyCare";
	}
}
