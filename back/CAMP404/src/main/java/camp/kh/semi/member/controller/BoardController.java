package camp.kh.semi.member.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import camp.kh.semi.member.model.service.CampService;
import camp.kh.semi.member.model.vo.Notice;

//공지 및 게시판 관련 컨트롤러

@Controller
@RequestMapping("/board")
@SessionAttributes({"notice"})
public class BoardController {
	private Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private CampService cservice;
	
	// 공지사항 이동
	@GetMapping(value ="/notice")
	public String notice() {
		logger.info("공지사항으로 이동");
		
		return "board/noticeList";
	}
	

	
	



	
	
}
