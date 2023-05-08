package camp.kh.semi.member.controller;

import java.util.Map;

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

//공지 및 게시판 관련 컨트롤러

@Controller
@RequestMapping("/board")
public class BoardController {
	private Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService service;
	
	
	
	
	
	@GetMapping(value ="/boardList")
	public String boardList() {
			logger.info("공지사항 페이지로 이동.");
			return "board/boardList";
		}
	
	
	
	// 공지사항 이동
	@GetMapping(value ="/list/{boardCode}")
	public String boardList( @PathVariable("boardCode") int boardCode,
							@RequestParam(value = "cp", required = false, defaultValue = "1") int cp,
							Model model ) {
		
		// 게시글 목록 조회 서비스 호출
		// 1) 게시판 이름 조회
		// 2) 페이지네이션 객체 생성
		// 3) 게시글 목록 조회
		
		Map<String, Object> map = null;
		
		map = service.selectBoardList(cp, boardCode);
		model.addAttribute("map",map);
		logger.info("공지사항으로 이동");

		return "board/boardList";
	}
	
	@PostMapping(value ="/boardWriteForm")
	public String boardWriteForm() {
			logger.info("글쓰기 페이지로 이동.");
			return "board/boardWriteForm";
		}
}
