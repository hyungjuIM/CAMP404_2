package camp.kh.semi.member.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import camp.kh.semi.member.model.dao.CampDAO;
import camp.kh.semi.member.model.vo.Lecture;
import camp.kh.semi.member.model.vo.Users;

@Service // 비즈니스 로직을 처리하는 클래스임을 명시하며 bean을 등록한다.
public class CampServiceImpl implements CampService {

	@Autowired
	private BCryptPasswordEncoder bcrypt;

	@Autowired
	private CampDAO dao;
	@Autowired
	public JavaMailSender sender;

	public void setJavaMailSender(JavaMailSender sender) {
		this.sender = sender;
	}

	/**
	 * 로그인
	 *
	 */
	@Override
	public Users login(Users inputMember) {

		Users loginMember = dao.login(inputMember);
		if (loginMember != null) {
			if (bcrypt.matches(inputMember.getUserPw(), loginMember.getUserPw())) {

				loginMember.setUserPw(null); // 비교 끝났으면 비밀번호 지우기

			} else { // 비밀번호가 일치하지 않은 경우
				loginMember = null; // 로그인을 실패한 형태로 바꿔줌

			}
		}

		return loginMember;
	}

	/**
	 * 이메일 중복검사
	 *
	 */
	@Override
	public int emailDupCheck(String userEmail) {
		return dao.emailDupCheck(userEmail);
	}

	/**
	 * 닉네임중복검사
	 *
	 */
	@Override
	public int nicknameDupCheck(String userNick) {
		return dao.nicknameDupCheck(userNick);
	}

	/**
	 * 아이디 중복검사
	 *
	 */
	@Override
	public int IdDupCheck(String userId) {
		return dao.IdDupCheck(userId);
	}

	/**
	 * 회원가입
	 *
	 */
	@Override
	public int signUp(Users inputMember) {
		// 비밀번호 암호화(bcrypt)
		String encPw = bcrypt.encode(inputMember.getUserPw());
		inputMember.setUserPw(encPw);

		int result = dao.signUp(inputMember);
	
		return result;
	}

	// 6자리 인증번호 생성
	private String CertificationNumber() {
		String cNumber = "";
		for (int i = 0; i < 6; i++) {

			int sel1 = (int) (Math.random() * 3); // 0:숫자 / 1,2:영어

			if (sel1 == 0) {

				int num = (int) (Math.random() * 10); // 0~9
				cNumber += num;

			} else {

				char ch = (char) (Math.random() * 26 + 65); // A~Z

				int sel2 = (int) (Math.random() * 2); // 0:소문자 / 1:대문자

				if (sel2 == 0) {
					ch = (char) (ch + ('a' - 'A')); // 대문자로 변경
				}

				cNumber += ch;
			}

		}
		return cNumber;
	}

	@Override
	public int sendCertificationCode(String email) throws Exception {
		String certificationNumber = CertificationNumber();

		// 메일 전송
		MimeMessage message = sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		helper.setTo(email);
		helper.setSubject("이메일 인증을 진행해주세요.");
		helper.setText("인증번호: " + certificationNumber);
		helper.setFrom("hyungju9753@gmail.com");
		sender.send(message);

		Map<String, Object> map = new HashMap<>();
		map.put("userEmail", email);
		map.put("cNumber", certificationNumber);
		// 인증번호를 DB에 저장
		int result = dao.insertCertification(map);
		return result;
	}

	@Override
	public int isValidCertification(String email, String cNumber) {
		Map<String, Object> map = new HashMap<>();
		map.put("userEmail", email);
		map.put("cNumber", cNumber);
		int result = dao.selectCertification(map);
		return result;
	}

	// 메인화면 강의 불러오기
	@Override
	public List<Lecture> getClassItems(int catNo) {
		
		return dao.getCat(catNo);
	}

	/** 회원정보 수정
	 *
	 */
	@Override
	public int changeInfo(Map<String, Object> paramMap) {
		

			paramMap.put("memberPw", bcrypt.encode( (String)paramMap.get("memberPw")) );

			return dao.changeInfo(paramMap);

	
	}

}
