package camp.kh.semi.member.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import camp.kh.semi.member.model.service.CampService;
import camp.kh.semi.member.model.vo.LectureNote;
import camp.kh.semi.member.model.vo.Users;

@Controller
@RequestMapping("/myPage")
public class LectureNoteController {

	@Autowired
	private CampService service;
	
	
@ResponseBody	
@PostMapping("/classroom1")
public int insertNote(@ModelAttribute LectureNote loginLectureNote,
						@RequestParam Map<String, Object> paramMap,
						HttpSession session,
						String noteContent ) {
	//로그인된 회원의 번호를 paramMap 에 추가
	//paramMap.put("userNo", loginLectureNote.getUserNo());
	//paramMap.put("noteContent", loginLectureNote.getNoteContent());
	
	Users loginMember = (Users)session.getAttribute("loginMember");
	
	int userNo = 0;
	if(loginMember != null) { // 로그인시
		userNo = loginMember.getUserNo();
	}
	
	
	//강의노트 저장 (insert)
	//int result = service.insertNote(loginLectureNote);
	int result = service.insertNote(noteContent);
	
	//이동할 페이지
	String path = null;
	String message=null;
	
	if(result > 0) {
		message = "노트 저장 성공";
		path = "myPage/classroom1";
	} else {
		message = "노트 저장 실패";
		path = "myPage/classroom1";
	}

	return result;	
}	
}
