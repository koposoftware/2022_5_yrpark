package kr.ac.kopo.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.service.AdminListService;
import kr.ac.kopo.vo.InsuranceItemVO;

@Controller
public class InsuranceListController {

	@Autowired
	private AdminListService adminListService;
	
	@RequestMapping("/insuranceListA")
	public String adminList(Model model) {
	    	List<Map<String, Object>> adminList = adminListService.adminList();
			
			 model.addAttribute("adminList", adminList);
			 System.out.println(adminList);
			 
			 List<Map<String, Object>> insuranceAll = adminListService.insuranceAll();
			 
			 model.addAttribute("insuranceAll", insuranceAll);
			
			 
		return "admin/insuranceListA";
	}
	
	@RequestMapping("/deleteproc")
	   public ModelAndView deleteItem(@ModelAttribute InsuranceItemVO insuranceItemVO, HttpServletRequest req, Model model, HttpSession session) {
			
			     	 
	         ModelAndView mav = new ModelAndView("redirect:/insuranceListA");
	            mav.addObject("insuranceItemVO",insuranceItemVO);
	            adminListService.deleteItem(insuranceItemVO);
	         
	         return mav;
	      }
}
