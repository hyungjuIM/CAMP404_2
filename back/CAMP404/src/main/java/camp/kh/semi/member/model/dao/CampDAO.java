package camp.kh.semi.member.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import camp.kh.semi.member.model.vo.Camp;
import camp.kh.semi.member.model.vo.Notice;

@Repository // 영속성을 가지는 DB / 파일과 연결되는 클래스임을 명시하면서 bean으로 등록.
public class CampDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 로거 import 시, 반드시 org.slf4j.Logger; org.slf4j.LoggerFactory; 할 것!
	private Logger logger = LoggerFactory.getLogger(CampDAO.class);
	
	
	public Camp login(Camp inputMember) {
		
		// campMapper는 camp-mapper.xml에서 정의했다.
Camp loginMember = sqlSession.selectOne("campMapper.login", inputMember);

return loginMember;
	}



	
	

}