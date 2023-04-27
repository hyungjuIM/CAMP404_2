package camp.kh.semi.member.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

// 강의소개 관련 컨트롤러

@Controller
@RequestMapping("/class")
public class ClassController {
	private Logger logger = LoggerFactory.getLogger(ClassController.class);
	
	// 강의 3번 이동
	@GetMapping(value ="/class3")
	public String class03() {
		logger.info("강의3으로 이동");
		
		return "class/class3";
		}
}