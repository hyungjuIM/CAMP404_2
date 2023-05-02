package camp.kh.semi.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import camp.kh.semi.member.model.service.CampService;
import camp.kh.semi.member.model.vo.LectureNote;

@Controller
@RequestMapping("/myPage")
public class Classroom1Controller {
//private Logger logger = LoggerFactory.getLogger(BoardController.class);
//@Autowired 
//private CampService service;
//	
//	// 내 강의장 이동 -> 강의 이동
//@GetMapping(value ="/classroom1")
//public String classroom() {
//	logger.info("마이페이지 -> 내 강의장 이동 -> 강의 이동.");
//	return "myPage/classroom1";
//	
//}
//// 강의노트 저장시, DB에 정보 insert
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
