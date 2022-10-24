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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.service.AdminListService;
import kr.ac.kopo.vo.InsuranceItemVO;

@Controller
public class AdminItemDetailController {

	@Autowired
	private AdminListService adminListService;
	
	@RequestMapping(value ="/insuranceDetailA", method = RequestMethod.POST)
	public ModelAndView insuranceDetailA(Model model, HttpServletRequest request, @ModelAttribute InsuranceItemVO insuranceitemVO,  HttpSession session) {
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
		 String signType =request.getParameter("signType");	
		 
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
		 insuranceitem.put("signType", signType);
	      ModelAndView mav = new ModelAndView("admin/insuranceDetailA");
	      mav.addObject("insuranceitem",insuranceitem);
		return mav;
	}
	
	@PostMapping("/updateItemProc")
	   public ModelAndView updateItem(@ModelAttribute InsuranceItemVO insuranceitemVO, Model model, HttpSession session) {

	                
	         ModelAndView mav = new ModelAndView("redirect:/insuranceListA");
	            mav.addObject("insuranceitemVO",insuranceitemVO);
	            adminListService.updateItem(insuranceitemVO);
	         
	         return mav;
	      }
}
