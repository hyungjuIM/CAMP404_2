package camp.kh.semi.member.model.service;

import java.util.Map;

import camp.kh.semi.member.model.vo.Camp;
import camp.kh.semi.member.model.vo.Certification;
import camp.kh.semi.member.model.vo.Users;

public interface CampService {
// 결합도를 낮추기 위해 interface 사용.
	
	/**
	 * @param inputMember
	 * @return loginMember
	 */
	public abstract Camp login(Camp inputMember);

	
	/**	이메일본인인증 서비스
	 * @param userEmail
	 * @return
	 */
	public abstract int insertCertification(String userEmail, String cNumber);


	public abstract int emailDupCheck(String userEmail);


	public abstract int nicknameDupCheck(String userNickname);


	public abstract int IdDupCheck(String userId);


	public abstract int signUp(Users inputMember);


	/** 강의노트 저장
	 * @param paramMap
	 * @return
	 */
	public abstract int updateNote(Map<String, Object> paramMap);
}
