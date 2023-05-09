package camp.kh.semi.member.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import camp.kh.semi.member.model.vo.Camp;
import camp.kh.semi.member.model.vo.LectureNote;
import camp.kh.semi.member.model.vo.Users;

@Repository // 영속성을 가지는 DB / 파일과 연결되는 클래스임을 명시하면서 bean으로 등록.
public class CampDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 로거 import 시, 반드시 org.slf4j.Logger; org.slf4j.LoggerFactory; 할 것!
	private Logger logger = LoggerFactory.getLogger(CampDAO.class);
	
	
	public Users login(Users inputMember) {
		
		// campMapper는 camp-mapper.xml에서 정의했다.
		Users loginMember = sqlSession.selectOne("campMapper.login", inputMember);

		return loginMember;
	}





	public int emailDupCheck(String userEmail) {
		return sqlSession.selectOne("campMapper.emailDupCheck", userEmail);
	}


	public int nicknameDupCheck(String userNick) {
		return sqlSession.selectOne("campMapper.nicknameDupCheck", userNick);
	}


	public int IdDupCheck(String userId) {
		return sqlSession.selectOne("campMapper.IdDupCheck", userId);
	}






	public int selectCertification(Map<String, Object> map) {
		
		int result = sqlSession.selectOne("campMapper.checkNumber",map);
		
		return result;
	}


	public int insertCertification(Map<String, Object> map) {
		return sqlSession.insert("campMapper.insertCertification",map);
	}
	
	// 회원가입
	public int signUp(Users inputMember) {
		return sqlSession.insert("campMapper.signUp", inputMember);
	}


	/** 강의노트 저장
	 * @param paramMap
	 * @return
	 */
//
//	public int insertNote(LectureNote loginLectureNote) {
//		return sqlSession.insert("campMapper.insertNote", loginLectureNote);
//	}


//	public int insertNote(String noteContent) {
//		
//		return sqlSession.insert("campMapper.insertNote", noteContent);
//	}
}