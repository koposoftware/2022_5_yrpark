package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.CardDAO;

@Service
public class CardService {

	@Autowired
	private CardDAO cardDAO;
	
	public List<Map<String, Object>> medicalList(String year, String month, String id) {
		List<Map<String, Object>> medicalList = cardDAO.medicalList(year, month, id);
	
		return medicalList;
	}
	
	public List<Map<String, Object>> sum(String year, String month, String id){
	      List<Map<String,Object>> sum = cardDAO.sum(year, month, id);
	      
	      return sum;
	      
	   }
	
}
