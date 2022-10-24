package kr.ac.kopo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.service.InsuranceAllService;

@Controller
public class ItemsController {
	
	@Autowired
	private InsuranceAllService insuranceallService;
	
	@RequestMapping("/items")
	public String insuranceItems(Model model) {
			
		List<Map<String, Object>> insuranceAll = insuranceallService.insuranceAll();
		
		 model.addAttribute("insuranceAll", insuranceAll);
		 
		return "items/items";
	}
	
}
