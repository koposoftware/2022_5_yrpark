package kr.ac.kopo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.service.AdminDashService;

@Controller
public class AdminDashController {

	@Autowired
	private AdminDashService adminDashService;
	
	@RequestMapping("/dashBoardA")
	public String dashBoardA(Model model) {
	    	List<Map<String, Object>> agecnt = adminDashService.agecnt();
			
			 model.addAttribute("agecnt", agecnt);
			 
			 List<Map<String, Object>> genderCnt = adminDashService.genderCnt();
			 
			 model.addAttribute("genderCnt", genderCnt);
			 
			 System.out.println(genderCnt);
		return "admin/dashBoardA";
	}
	
}
