package camp.kh.semi.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//공지 및 게시판 관련 컨트롤러

@Controller
@RequestMapping("/board")
public class BoardController {
	private Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	// 공지사항 이동
	@GetMapping(value ="/notice")
	public String notice() {
		logger.info("공지사항으로 이동");
		
		return "board/notice";
	}
}
