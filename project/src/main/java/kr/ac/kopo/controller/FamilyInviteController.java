package kr.ac.kopo.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.service.FamilyInviteService;
import kr.ac.kopo.vo.MemberVO;

@Controller
public class FamilyInviteController {
	 
	@Autowired
	private FamilyInviteService familyinviteService;
	
	@RequestMapping("/familyInvite")
	public String familyInvite(HttpServletRequest request, Model model, HttpSession session) {
		String groupId = request.getParameter("groupId");
		
		MemberVO member = (MemberVO)session.getAttribute("loginVO");
				if(member == null) {
					return "/member/redirect";
				}
		
				String id = member.getId();
				Map<String,Object> familyInvite = new HashMap<>();
				familyInvite.put("groupId", groupId);
				
		return "/healthCare/familyInvite";
	}
	
	@RequestMapping("/familyInviteSuccess")
	public String familyInviteSuccess() {
			
		return "/healthCare/familyInviteSuccess";
	}
	
	@PostMapping("/updateproc")
	   public ModelAndView updtaeGroup(@ModelAttribute MemberVO memberVO, Model model, HttpSession session) {

	         MemberVO member = (MemberVO) session.getAttribute("loginVO");
	         String id = member.getId();
	         memberVO.setId(id);
	         
	         ModelAndView mav = new ModelAndView("redirect:/familyInviteSuccess");
	            mav.addObject("memberVO",memberVO);
	            familyinviteService.updateGroup(memberVO);
	         
	         return mav;
	      }
}
