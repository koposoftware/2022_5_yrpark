package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.SignPaperDAO;

@Service
public class SignPaperService {

	@Autowired
	private SignPaperDAO signPaperDao;
	
	public List<Map<String, Object>> signpaper(String id) {
		List<Map<String, Object>> signpaper = signPaperDao.signpaper(id);
		return signpaper;
	}
}
