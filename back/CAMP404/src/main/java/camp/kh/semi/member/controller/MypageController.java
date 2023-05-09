package camp.kh.semi.member.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import camp.kh.semi.member.model.service.CampService;
import camp.kh.semi.member.model.vo.Lecture;
import camp.kh.semi.member.model.vo.LectureNote;
import camp.kh.semi.member.model.vo.Users;

//마이페이지, 정보수정, 회원탈퇴, 찜목록 관련 기능 모음 컨트롤러

@Controller
@SessionAttributes({"loginMember"} )
@RequestMapping("/myPage")
public class MypageController {
private Logger logger = LoggerFactory.getLogger(MypageController.class);

@Autowired
private CampService service;


// 마이페이지 -> 내 강의장 이동
@GetMapping(value ="/myClass")
public String MyClass() {
		logger.info("마이페이지 -> 내 강의장으로 이동.");
		return "myPage/myClass";
	}

// 마이페이지 -> 회원 정보 수정 이동
@GetMapping(value ="/my-info")
public String myPage() {
	logger.info("마이페이지 -> 회원 정보 수정으로 이동.");
	return "myPage/my-info";
}

// 마이페이지 -> 내 강의장 이동 -> 강의 이동
@GetMapping(value ="/classroom1")
public String classroom() {
	logger.info("마이페이지 -> 내 강의장 이동 -> 강의 이동.");
	return "myPage/classroom1";
}

@GetMapping("/logout")
public String logout(SessionStatus status) {
	status.setComplete();
	
	return "redirect:/";
	
}

}









