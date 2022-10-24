package kr.ac.kopo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SearchClinicController {

		@ResponseBody
		@GetMapping("/seachClinic")
	    public String seachClinic() {
			
			return "healthCare/seachClinic";
			
	}
}
