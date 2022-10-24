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

import kr.ac.kopo.service.SignPaperService;
import kr.ac.kopo.vo.MemberVO;

@Controller
public class SignInfoController {

	@Autowired
	private SignPaperService signpaperService;
	
	@RequestMapping("/signInfo")
	public String signInfo(HttpServletRequest req, Model model, HttpSession session, @ModelAttribute MemberVO member) {
		String id = req.getParameter("id");
		
		MemberVO memberVO = (MemberVO) session.getAttribute("loginVO");
		id= memberVO.getId();
		
		List<Map<String, Object>> signpaper = signpaperService.signpaper(id);
		model.addAttribute("signpaper", signpaper);
		
		
		return "mypage/signInfo";
	}
}
