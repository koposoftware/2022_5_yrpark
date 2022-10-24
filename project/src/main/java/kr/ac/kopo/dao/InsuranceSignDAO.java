package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.ac.kopo.vo.InsuranceSignVO;

@Mapper
public interface InsuranceSignDAO {

	public List<Map<String, Object>> insuranceList(String id);
	public List<Map<String, Object>> insuranceFee(String id);
	public List<Map<String, Object>> insuranceSum(String id);
	public List<Map<String, Object>> insuranceRank();
	public void insertInsurance(InsuranceSignVO insuranceSignVO);
	
}
