package camp.kh.semi.member.model.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import camp.kh.semi.member.model.dao.CampDAO;
import camp.kh.semi.member.model.vo.Camp;
import camp.kh.semi.member.model.vo.LectureNote;
import camp.kh.semi.member.model.vo.Users;

@Service // 비즈니스 로직을 처리하는 클래스임을 명시하며 bean을 등록한다.
public class CampServiceImpl implements CampService{

	@Autowired
	private BCryptPasswordEncoder bcrypt;
	
	@Autowired
	private CampDAO dao;

	
	
	@Override
	public Camp login(Camp inputMember) {
		
		Camp loginMember = dao.login(inputMember);
		if(loginMember != null) { 
			if( bcrypt.matches(  inputMember.getUserPw()   ,  loginMember.getUserPw() ) ) {
				
				loginMember.setUserPw(null); // 비교 끝났으면 비밀번호 지우기
				
			} else { // 비밀번호가 일치하지 않은 경우
				loginMember = null; // 로그인을 실패한 형태로 바꿔줌
				
			}
		}
		
		return loginMember;
	}


	// 이메일인증
	@Override
	public int insertCertification(String userEmail, String cNumber) {
		
		// 1) 입력한 이메일과 일치하는 값이 있으면 수정(UPDATE)
		int result = dao.updateCertification(userEmail, cNumber);
		// 2) 일치하는 이메일이 없는 경우 -> 처음으로 인증번호를 발급받음 -> 삽입(insert)
		if (result == 0) {
			result = dao.insertCertification(userEmail, cNumber);

		}
		return result;
	}


	@Override
	public int emailDupCheck(String userEmail) {
		return dao.emailDupCheck(userEmail);
	}


	@Override
	public int nicknameDupCheck(String userNickname) {
		return dao.nicknameDupCheck(userNickname);
	}


	@Override
	public int IdDupCheck(String userId) {
		return dao.IdDupCheck(userId);
	}


	@Override
	public int signUp(Users inputMember) {
		// 비밀번호 암호화(bcrypt)
		String encPw = bcrypt.encode( inputMember.getUserPw() );
		inputMember.setUserPw(encPw);
		
		int result = dao.signUp(inputMember);
		
		return result;
	}




	//강의저장 노트
//	@Override
//	public int insertNote(LectureNote loginLectureNote) {
//		
//		return dao.insertNote(loginLectureNote);
//	}

	@Override
	public int insertNote(String noteContent) {
		
		return dao.insertNote(noteContent);
	}
	


	
	
	
	
	




	

}
