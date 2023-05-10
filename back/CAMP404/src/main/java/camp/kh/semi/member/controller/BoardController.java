package camp.kh.semi.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import camp.kh.semi.member.model.service.boardService.BoardService;
import camp.kh.semi.member.model.vo.boardVO.BoardDetail;



//공지 및 게시판 관련 컨트롤러

@Controller
@RequestMapping("/board")
public class BoardController {
	private Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService service;
	
	
	
	
	// 공지사항 이동
	@GetMapping(value ="/list/{boardCode}")
	public String boardList( @PathVariable("boardCode") int boardCode,
							@RequestParam(value = "cp", required = false, defaultValue = "1") int cp,
							Model model ) {

		Map<String, Object> map = null;
		
		map = service.selectBoardList(cp, boardCode);
		model.addAttribute("map",map);
		logger.info("공지사항으로 이동");

		return "board/boardList";
	}
	
	
	

	
	
}
