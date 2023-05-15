package camp.kh.semi.member.model.service;

import java.util.List;
import java.util.Map;

import camp.kh.semi.member.model.vo.Camp;
import camp.kh.semi.member.model.vo.Certification;
import camp.kh.semi.member.model.vo.FavLec;
import camp.kh.semi.member.model.vo.Lecture;
import camp.kh.semi.member.model.vo.Users;

public interface CampService {
// 결합도를 낮추기 위해 interface 사용.
	
	/**
	 * @param inputMember
	 * @return loginMember
	 */
	public abstract Users login(Users inputMember);

	
	public abstract int emailDupCheck(String userEmail);


	public abstract int nicknameDupCheck(String userNick);


	public abstract int IdDupCheck(String userId);


	public abstract int signUp(Users inputMember);


	public abstract int sendCertificationCode(String email) throws Exception;


	public abstract int isValidCertification(String email, String cNumber);


	// 메인화면 강의 불러오기
	public abstract List<Lecture> getClassItems(int catNo);


	public abstract int changeInfo(Map<String, Object> paramMap);

	// 찜 목록에서 조회하기
	public  boolean checkFavLec(FavLec favlec);
		
	// 찜 목록에 추가하기
	public abstract int insertFavLec(FavLec favlec);

	// 찜 목록 FavYn 업데이트 하기 / 찜목록에서 삭제
	public abstract int updateFavLec(FavLec favlec);

// 로그인 시 세션에 찜목록 저장
	public abstract List<Integer> getFavLecList(FavLec favLec);

	



//	public abstract int insertNote(String noteContent);




}
