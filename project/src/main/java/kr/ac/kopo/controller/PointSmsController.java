package kr.ac.kopo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.ac.kopo.service.PointHistoryService;

@Controller
public class PointSmsController {

	@Autowired
	private PointHistoryService pointHistoryService;
	
	
}
