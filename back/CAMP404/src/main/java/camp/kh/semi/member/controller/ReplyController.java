package camp.kh.semi.member.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;

import camp.kh.semi.member.model.service.boardService.ReplyService;
import camp.kh.semi.member.model.vo.boardVO.Reply;



// REST (REpresentational State Transfer) : 
// - 자원을 이름으로 구분(REpresentational, 자원의 표현)하여
// 자원의 상태(State)를 주고 받는것(Transfer)

// -> 특정한 이름(주소)로 요청이 오면 값으로 응답

// @RestController : 요청에 따른 응답이 모두 데이터(값) 자체인 컨트롤러
// -> @Controller + @ResponseBody

@RestController
@SessionAttributes({"loginMember"})
@RequestMapping("/reply")
public class ReplyController {
	private Logger logger = LoggerFactory.getLogger(ReplyController.class);

	@Autowired
	private ReplyService service;
	
	// 댓글 목록조회
	@GetMapping("/selectReplyList")
	public String selectReplyList(int boardNo) {
		
		List<Reply> rList = service.selectReplyList(boardNo);
		logger.info("댓글목록으로 이동");
		return new Gson().toJson(rList);
	}
	
	
	// 댓글 등록
	@PostMapping("/insert")
	public int insertReply(Reply reply) {
		System.out.println(reply + "====================================================");
		System.out.println(reply + "====================================================");
		System.out.println(reply + "====================================================");
		System.out.println(reply + "====================================================");
		System.out.println(reply + "====================================================");
		System.out.println(reply + "====================================================");
		System.out.println(reply + "====================================================");
		int result=service.insertReply(reply);
		return result;
	}
	
	// 댓글 수정
	@PostMapping("/update")
	public int updateReply(Reply reply) {
		return service.updateReply(reply);
	}
		
	
	// 댓글 삭제
	@GetMapping("/delete")
	public int deleteReply(int replyNo) {
		return service.deleteReply(replyNo);
	}
}
