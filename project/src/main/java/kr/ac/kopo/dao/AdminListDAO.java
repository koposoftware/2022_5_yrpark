package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.ac.kopo.vo.InsuranceItemVO;

@Mapper
public interface AdminListDAO {

	public List<Map<String, Object>> adminList();
	public List<Map<String, Object>> insuranceAll();
	public void deleteItem(InsuranceItemVO insuranceItemVO);
	public void updateItem(InsuranceItemVO insuranceItemVO);
}
