package kr.ac.kopo.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PointMallController {

	@RequestMapping("/pointMall")
	public String pointMall() {
			
		return "mypage/pointMall";
	}
}
