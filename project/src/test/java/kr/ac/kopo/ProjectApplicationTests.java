package kr.ac.kopo;

import org.junit.jupiter.api.Test;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import kr.ac.kopo.vo.MemberVO;

@SpringBootTest
class ProjectApplicationTests {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Test
	void contextLoads() {
	}

	@Test
	public void selectUser() {
		
		MemberVO member = new MemberVO();
		member.setId("user");
		member.setPassword("user");
		MemberVO memberVO = sqlSessionTemplate.selectOne("member.dao.memberDAO.selectUser", member);

		System.out.println(member);
	}
}
