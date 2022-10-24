package kr.ac.kopo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.service.InsuranceItemService;
import kr.ac.kopo.service.InsuranceSignService;
import kr.ac.kopo.vo.InsuranceItemVO;
import kr.ac.kopo.vo.InsuranceSignVO;
import kr.ac.kopo.vo.MemberVO;

@Controller
public class InsuranceJoinController {
	
	@Autowired
	private InsuranceItemService insuranceItemService;
	@Autowired
	private InsuranceSignService insuranceSignService;
	
	@RequestMapping(value ="/insuranceDetail", method = RequestMethod.POST)
	public ModelAndView insuranceDetail(Model model, HttpServletRequest request, @ModelAttribute InsuranceItemVO insuranceitemVO,  HttpSession session) {
		 model.addAttribute("insuranceItemVO", insuranceitemVO);
		 String no =request.getParameter("no");
		 String companyName =request.getParameter("companyName");
		 String insuranceName =request.getParameter("insuranceName");
	   	 String insuranceType =request.getParameter("insuranceType");
		 String protectItem =request.getParameter("protectItem");
		 String protectFee =request.getParameter("protectFee");
		 String insuranceFee =request.getParameter("insuranceFee");
		 String signAge =request.getParameter("signAge");
		 String remark =request.getParameter("remark");
		 
		 Map<String,Object> insuranceitem = new HashMap<>();
		 insuranceitem.put("no", no);
		 insuranceitem.put("companyName", companyName);
		 insuranceitem.put("insuranceName", insuranceName);
		 insuranceitem.put("insuranceType", insuranceType);
		 insuranceitem.put("protectItem", protectItem);
		 insuranceitem.put("protectFee", protectFee);
		 insuranceitem.put("insuranceFee", insuranceFee);
		 insuranceitem.put("signAge", signAge);
		 insuranceitem.put("remark", remark);
	      ModelAndView mav = new ModelAndView("healthCare/insuranceDetail");
	      mav.addObject("insuranceitem",insuranceitem);

			System.out.println(insuranceitemVO);

		return mav;
	}
	
	@RequestMapping(value ="/insuranceJoin", method = RequestMethod.POST)
	public ModelAndView insuranceJoin(Model model, HttpServletRequest request, @ModelAttribute InsuranceItemVO insuranceitemVO,  HttpSession session) {
		model.addAttribute("insuranceItemVO", insuranceitemVO);
		 String no =request.getParameter("no");
		 String companyName =request.getParameter("companyName");
		 String insuranceName =request.getParameter("insuranceName");
	   	 String insuranceType =request.getParameter("insuranceType");
		 String protectItem =request.getParameter("protectItem");
		 String protectFee =request.getParameter("protectFee");
		 String insuranceFee =request.getParameter("insuranceFee");
		 String signAge =request.getParameter("signAge");
		 String remark =request.getParameter("remark");
		 
		 Map<String,Object> insuranceitem = new HashMap<>();
		 insuranceitem.put("no", no);
		 insuranceitem.put("companyName", companyName);
		 insuranceitem.put("insuranceName", insuranceName);
		 insuranceitem.put("insuranceType", insuranceType);
		 insuranceitem.put("protectItem", protectItem);
		 insuranceitem.put("protectFee", protectFee);
		 insuranceitem.put("insuranceFee", insuranceFee);
		 insuranceitem.put("signAge", signAge);
		 insuranceitem.put("remark", remark);
	      ModelAndView mav = new ModelAndView("healthCare/insuranceJoin");
	      mav.addObject("insuranceitem",insuranceitem);

			System.out.println(insuranceitemVO);
			String id = request.getParameter("id");
			
			MemberVO memberVO = (MemberVO) session.getAttribute("loginVO");
			id= memberVO.getId();
			
			List<Map<String, Object>> selectPoint = insuranceItemService.selectPoint(id);
		       for(Map<String,Object> data : selectPoint) {
		          Set<String> keys = data.keySet();
		          for(String key:keys) {
		             
		          }
		       }
		       model.addAttribute("selectPoint", selectPoint);
		return mav;
	}
	
	@PostMapping("/joinproc")
	   public ModelAndView insuranceJoin(@ModelAttribute InsuranceSignVO sign, Model model, HttpSession session) {

	         MemberVO member = (MemberVO) session.getAttribute("loginVO");
	         String id = member.getId();
	         sign.setId(id);
	         
	         ModelAndView mav = new ModelAndView("redirect:/");
	            mav.addObject("sign",sign);
	            insuranceSignService.insertInsurance(sign);
	         
	         return mav;
	      }
	   


}
