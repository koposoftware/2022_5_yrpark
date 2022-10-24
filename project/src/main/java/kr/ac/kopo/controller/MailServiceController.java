package kr.ac.kopo.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.service.MailService;
import kr.ac.kopo.vo.InsuranceItemVO;
import kr.ac.kopo.vo.MailServiceVO;

@Controller
public class MailServiceController {

	@Autowired
	private MailService mailService;

	@GetMapping("/mailService")
	public String mailService(Model model, @ModelAttribute InsuranceItemVO insuranceitemVO, HttpServletRequest request) {
		
		
		List<Map<String, Object>> memberMail = mailService.memberMail();

		model.addAttribute("memberMail", memberMail);
		System.out.println(memberMail);
		System.out.println("mailService" + "전송");
		
		String no =request.getParameter("no");
		
		model.addAttribute("insuranceItemVO", insuranceitemVO);
		System.out.println(insuranceitemVO);
		return "admin/mailService";
	}

	@PostMapping("/mailService")
	public String sendMail(MailServiceVO mailDto, MultipartFile file) throws MessagingException, IOException {
		mailService.sendMultipleMessage(mailDto, file); 
//		mailService.sendSimpleMessage(mailDto);
		System.out.println("메일 전송 완료");
		return "${pageContext.request.contextPath}/indexA";

	}

	 

}
