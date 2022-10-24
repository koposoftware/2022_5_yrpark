package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import kr.ac.kopo.service.MemberService;
import kr.ac.kopo.vo.MemberVO;

	@Controller
	public class MemberController {
		
		@Autowired
		private MemberService memberService;
		
		
		/*
		 * @GetMapping("/healthPage") public String selectInfo(MemberVO member, Model
		 * model){
		 * 
		 * model.addAttribute("memberList", memberService.selectInfo(member)); return
		 * "mypage/healthPage"; }
		 */
		
		
		@RequestMapping(value="/login", method=RequestMethod.GET)
		public String login(HttpServletRequest request) {
			//spring form tag에서 사용할 memberVO를 공유영역에 등록시킨다.
			request.setAttribute("memberVO", new MemberVO());
			
			//WEB-INF/jsp/member/login.jsp
			return "member/login";
			
		}
		
		//login post, /login
		@PostMapping("/login")
		public String loginPost(@Valid @ModelAttribute("memberVO") MemberVO member, HttpServletRequest request, BindingResult result, Model model, HttpSession session) {
			
			System.out.println("result = " + result);
			System.out.println("member = " +member);
			if(result.hasErrors()) {
				// null값이 존재 => 다시 입력하세요
				// WEB-INF/jsp/member/login.jsp
				return "member/login";
			} else {
				// null값이 존재하지 않음 => db작업, id/pwd가 유효한 사용자인지 확인
				// db작업
				MemberVO Member = memberService.login(member);
				System.out.println("authMember : " + Member);
				
				if(Member == null) {
					// id랑 password가 유효하지 않은 경우
					// 
					model.addAttribute("loginmsg", "id와 password가 유효하지 않습니다.");
					// WEB-INF/jsp/member/login.jsp
					return "member/login";
				} 
				
				else {
					// 유효한 경우
					session.setAttribute("loginVO", Member);
					
					}
				
				if(!member.getRedirectPath().equals("")) {
					return "redirect:/" + member.getRedirectPath();
				}
					
				
				return "redirect:/";

				}
			
				
			}
		
		
		
		
		
		
		@RequestMapping("/logout")
		//public String logout(HttpSession session, SessionStatus sessionStatus) {
		//session.invalidate();
		public String logout(HttpSession session, SessionStatus sessionStatus) {

			sessionStatus.setComplete();
			session.invalidate();
			return "redirect:/";
		}
		
		
}
