package camp.kh.semi.member.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import camp.kh.semi.member.model.service.CampService;

import camp.kh.semi.member.model.vo.Users;


// 로그인 및 회원가입 관련 기능 모음 컨트롤러

@Controller
@SessionAttributes({"loginMember"})
@RequestMapping("/main")
public class MainController {
	private Logger logger = LoggerFactory.getLogger(MainController.class);

// 로그인 페이지 이동
	@GetMapping(value ="/login")
	public String login() {
			logger.info("로그인 페이지로 이동.");
			return "main/login";
		}
	


	
	@Autowired // bean으로 등록된 객체 중, 타입이 같거나 상속 관계인 bean을 주입해주는 역할.
	private CampService service;
	
//	@GetMapping("/login")
//	public String login() {
//		logger.debug("login");
//		return "login";
//	}
	
//	로그인 기능
	@PostMapping("/login")
	public String login	(@ModelAttribute("Users") Users inputMember, Model model, 
			RedirectAttributes ra, HttpServletResponse resp, HttpServletRequest req,
			@RequestParam(value ="saveId", required=false) String saveId
			) {
		logger.info("로그인 기능 수행됨.");

	Users loginMember = service.login(inputMember);
	

	if(loginMember != null) { 	// 로그인 성공 시
		model.addAttribute("loginMember", loginMember);
		
		Cookie cookie = new Cookie("saveId", loginMember.getUserEmail());
		
		if(saveId != null) { // 아이디 저장이 체크 되었을 때,
			cookie.setMaxAge(60 * 60 * 24 * 365);
		} else {
			cookie.setMaxAge(0);
		}
		cookie.setPath(req.getContextPath());
		
		resp.addCookie(cookie);
		logger.info("로그인 됨.");
	} else {
		logger.info("로그인 실패.");
		ra.addFlashAttribute("message", "아이디 또는 비밀번호가 일치하지 않습니다.");
		
		return "redirect:/main/login";
	}

	System.out.println();
	return "redirect:/";
	}
	
////	로그아웃 기능
//	@GetMapping("/logout")
//	public String logout(SessionStatus status) {
//		
//		logger.info("로그아웃 기능 수행됨.");
//		
//		return "redirect:/";
//		
//	}
	
	// 회원가입 화면 전환
	@GetMapping(value="/signUp")
	public String signUp() {
		logger.info("회원가입 페이지로 이동함.");
		return "main/signUp";
	}
	
	// 이메일 중복 검사
	@ResponseBody  // ajax 응답 시 사용!
	@GetMapping("/emailDupCheck")
	public int emailDupCheck(String userEmail) {
		int result = service.emailDupCheck(userEmail);
		return result;
		
	}
	
	
	// 닉네임 중복 검사
	@ResponseBody  
	@GetMapping("/nicknameDupCheck")
	public int nicknameDupCheck(String userNick) {
		int result = service.nicknameDupCheck(userNick);
		
		return result;
		
	}
	
	// 아이디 중복검사
	@ResponseBody
	@GetMapping("/IdDupCheck")
	public int IdDupCheck(String userId) {
		int result =service.IdDupCheck(userId);
		return result;
	}
	
	

	// 회원 가입
	@PostMapping("/signUp")
	public String signUp( Users inputMember
//						, String[] memberAddress
						, RedirectAttributes ra) {
		

		
//		inputMember.setUserAddress(  String.join(",,", memberAddress)  );
//	
//		
//		if( inputMember.getUserAddress().equals(",,,,") ) { // 주소가 입력되지 않은 경우
//			
//			inputMember.setUserAddress(null); // null로 변환
//		}
		
		// 회원 가입 서비스 호출
		int result = service.signUp(inputMember);
		
		String message = null;
		String path = null;
		
		if(result > 0) { // 회원 가입 성공
			message = "회원 가입 성공";
			path = "redirect:/main/login"; // 메인페이지
			
		}else { // 실패
			message = "회원 가입 실패";
			path = "redirect:/main/signUp"; // 회원 가입 페이지
		}
		
		ra.addFlashAttribute("message", message);
		return path;
	}
	
	
	}

