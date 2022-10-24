package kr.ac.kopo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.service.AdminInsertService;
import kr.ac.kopo.vo.InsuranceItemVO;

@Controller
public class InsertItemAController {
	
	@Autowired
	private AdminInsertService adminInsertService;
	
	@RequestMapping("/insertItemA")
	public String insertItemA() {
			
		return "admin/insertItemA";
	}
	
	@PostMapping("/insertProc")
	   public ModelAndView insurancePoint(@ModelAttribute InsuranceItemVO item, Model model, HttpSession session) {
	                  
	         ModelAndView mav = new ModelAndView("redirect:/insuranceListA");
	            mav.addObject("item",item);
	            adminInsertService.insertItem(item);
	         
	         return mav;
	      }
}
