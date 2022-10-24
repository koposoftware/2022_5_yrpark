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
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.service.InsuranceItemService;
import kr.ac.kopo.service.MemberService;
import kr.ac.kopo.vo.InsuranceItemVO;
import kr.ac.kopo.vo.MemberVO;

@Controller
public class MyInsuranceController {

	@Autowired
	private InsuranceItemService insuranceitemService;
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/myInsurance", method = RequestMethod.GET)
	public String insuranceList(HttpServletRequest req, Model model, HttpSession session,
			@ModelAttribute MemberVO member) {

		String id = req.getParameter("id");

		MemberVO memberVO = (MemberVO) session.getAttribute("loginVO");
		id = memberVO.getId();

		return "healthCare/myInsurance";
	}
	
	@ResponseBody
	@PostMapping("/insuranceList")
	public List<Map<String, Object>> recommendInsurance(HttpServletRequest req, Model model, @ModelAttribute InsuranceItemVO insuranceitemVO,  HttpSession session) {
	String id = req.getParameter("id");
			
			MemberVO memberVO = (MemberVO) session.getAttribute("loginVO");
			id= memberVO.getId();
			
			 List<Map<String, Object>> insuranceItem = insuranceitemService.insuranceItem(id);
				/*
				 * for(Map<String,Object> data : insuranceItem) { Set<String> keys =
				 * data.keySet(); for(String key:keys) {
				 * 
				 * } }
				 */
			 
		       
		
		       System.out.println(insuranceItem);
		       return insuranceItem;
	}
	
			
}
