package camp.kh.semi.member.model.service;

import camp.kh.semi.member.model.vo.Camp;
import camp.kh.semi.member.model.vo.Certification;
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


	public abstract int insertNote(String noteContent);




}
