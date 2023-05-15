package camp.kh.semi.member.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import camp.kh.semi.member.model.vo.Camp;
import camp.kh.semi.member.model.vo.FavLec;
import camp.kh.semi.member.model.vo.Lecture;
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




// 메인화면 강의 정보 불러오기
	public List<Lecture> getClassItems(int catNo) {
		return sqlSession.selectList("campMapper.getClassItems",catNo);
	}





	/** 회원정보 수정
	 * @param paramMap
	 * @return
	 */
	public int changeInfo(Map<String, Object> paramMap) {
		return sqlSession.update("campMapper.changeInfo", paramMap);
		
	}


	// 찜 목록에서 조회하기
	public boolean checkFavLec(FavLec favlec) {
		Boolean result = sqlSession.selectOne("campMapper.checkFavLec", favlec);
	    if (result == null) {
	        return false;
	    }
	    return result;
	}

	// 찜목록에 추가하기
	public int insertFavLec(FavLec favlec) {
		return sqlSession.insert("campMapper.insertFavLec", favlec);
	}

	// 찜 목록 FavYn 업데이트 하기 / 찜목록에서 삭제
	public int updateFavLec(FavLec favlec) {
		return sqlSession.update("campMapper.updateFavLec", favlec);
	}





	public List<Integer> getFavLecList(FavLec favLec) {
		
		return sqlSession.selectList("campMapper.getFavLecList", favLec);
	}










	

}