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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import camp.kh.semi.member.model.service.CampService;
import camp.kh.semi.member.model.vo.Lecture;
import camp.kh.semi.member.model.vo.LectureNote;
import camp.kh.semi.member.model.vo.Users;

@Controller
@RequestMapping("/myPage/classroom1")
public class Classroom1Controller {
	
	private Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired 
	private CampService service;
	
	//강의이동
	@GetMapping("/classroom1")
	public String classroom() {
		return "/myPage/classroom1";
	}
	
	@PostMapping("/classroom1")
	public String insertNote(@ModelAttribute("loginMember")Users loginMember,
							@ModelAttribute("loginLecture") Lecture loginLecture,
							@ModelAttribute("loginLectureNote") LectureNote loginLectureNote,
							@RequestParam Map<String, Object> paramMap,
							RedirectAttributes ra) {
		
		//강의노트 저장 (update)
				
		paramMap.put("noteNo", loginLectureNote.getLectureNo()  );
		paramMap.put("noteContent",loginLectureNote.getNoteContent() );
		paramMap.put("usersNo", loginMember.getUserNo());
		paramMap.put("lectureNo", loginLecture.getLectureNo());
		
		int result = service.updateNote(paramMap);
		
		String message = null;
		
		if(result > 0) {
			message = "강의노트 저장 성공";
			loginLectureNote.setLectureNo(paramMap.get(""));
			loginLectureNote.setNoteContent(paramMap.get("subArea"));
			loginLectureNote.setNoteNo(paramMap.get(""));
			loginLectureNote.setUsersNo(paramMap.get(""));
			
		}else {
			message = "강의노트 저장 실패";
		}
		ra.addFlashAttribute("message",message);
		return "redirect:classroom1";
	}
	



// 강의노트 저장시, DB에 정보 insert
//@PostMapping("/classroom1")
//public String signUp(@ModelAttribute LectureNote noteSavedata) {
//	
//	int result = service.noteSave(noteSavedata);
//	String view = null;
//	
//	if(result == 1) {
//		view = "redirect:/";
//	}else {
//		view="myPage/classroom1";
//	}		
//	return view;
//}

}
