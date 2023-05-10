package camp.kh.semi.member.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import camp.kh.semi.common.Util;
import camp.kh.semi.member.model.service.boardService.BoardService;
import camp.kh.semi.member.model.vo.Users;
import camp.kh.semi.member.model.vo.boardVO.BoardDetail;

//공지 및 게시판 관련 컨트롤러

@Controller
@RequestMapping("/board")
@SessionAttributes({"loginMember"})
public class BoardController {
	private Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService service;
	
	
	
	
	// 공지사항 이동
	@GetMapping(value ="/list/{boardCode}")
	public String boardList( @PathVariable("boardCode") int boardCode,
							@RequestParam(value = "cp", required = false, defaultValue = "1") int cp,
							Model model, HttpSession session ) {

		Map<String, Object> map = null;
		
		map = service.selectBoardList(cp, boardCode);
		model.addAttribute("map",map);
		logger.info("공지사항으로 이동");
		Users loginMember = (Users)session.getAttribute("loginMember");
		System.out.println(loginMember);
		return "board/boardList";
	}
	

	 	
	
	// 게시글 상세 조회
	@GetMapping("/detail/{boardCode}/{boardNo}")
	public String boardDetail(@PathVariable("boardCode") int boardCode,
							@PathVariable("boardNo") int boardNo,
							@RequestParam(value = "cp", required = false, defaultValue = "1") int cp,
							Model model,
							HttpSession session,
							HttpServletRequest req,HttpServletResponse resp ) {
		
		
		// 게시글 상세 조회 서비스 호출
		BoardDetail detail = service.selectBoardDetail(boardNo);
		
		// @ModelAttribute는 별도의 required 속성이 없어서 무조건 필수!
		//  -> 세션에 loginMember가 없으면 예외 발생
		
		// 해결방법 : HttpSession을 이용
		
		
		// 상세 조회 성공시 
		// 쿠키를 이용한 조회수 중복 증가 방지 코드 + 본인의 글은 조회수 증가 X
		System.out.println(detail);
		
		if( detail != null ) { // 상세 조회 성공 시
			
			Users loginMember = (Users)session.getAttribute("loginMember");
			System.out.println(loginMember);
			int userNo = 0;
			
			if(loginMember != null) {
				userNo = loginMember.getUserNo();
			}
			
			// 글쓴이와 현재 클라이언트(로그인 한 사람)가 같지 않은 경우 -> 조회 수 증가
			if( detail.getUserNo() != userNo ) {
				
				Cookie cookie = null; // 기존에 존재하던 쿠키를 저장하는 변수
				
				Cookie[] cArr = req.getCookies(); // 쿠키 얻어오기 
				
				if(cArr != null && cArr.length > 0) { // 얻어온 쿠키가 있을 경우
					
					// 얻어온 쿠키 중 이름이 "readBoardNo"가 있으면 얻어오기
					for(Cookie c : cArr) {
						
						if(c.getName().equals("readBoardNo")) {
							cookie = c;
						}
						
					}
				}
				
				
				
				int result = 0;
				
				
				
				if ( cookie == null ) { // 기존에 "readBoardNo" 이름의 쿠키가 없던 경우
					cookie = new Cookie("readBoardNo", boardNo+"");
					result = service.updateReadCount(boardNo);
					
				} else { // 기존에 "readBoardNo" 이름의 쿠키가 있을  경우
					// -> 쿠키에 저장된 값 뒤쪽에 현재 조회된 게시글 번호를 추가
					// 단, 기존 쿠키값에 중복되는 번호가 없어야 함.
					
					String[] temp = cookie.getValue().split("/");
					
					// "readBoardNo" : "1/2/11/10/20/300/1000" [1,2,3,11,20,300,1000]
					
					List<String> list = Arrays.asList(temp); // 배열 -> List 변환
					
					// List.indexOf(Object) :
					// - List에서 Object와 일치하는 부분의 인덱스를 반환
					// - 일치하는 부분이 없으면 -1반환
					
					if( list.indexOf(boardNo+"") == -1 ) { // 기존 값에 같은 글번호가 없다면 추가
						
						cookie.setValue( cookie.getValue() + "/" + boardNo );
						result = service.updateReadCount(boardNo); // 조회수 증가 서비스 호출
						
					}
				}
				
				
				// 결과값 이용한 DB 동기화
				if (result > 0) {
					detail.setReadCount(detail.getReadCount() + 1); // 이미 조회된 데이터 DB 동기화
					
					cookie.setPath(req.getContextPath());
					cookie.setMaxAge(60 * 60 * 1);
					resp.addCookie(cookie);
					
				}
			}
		}
		
		model.addAttribute("detail", detail);
		return "board/boardDetail";
		
	}
	
	// 게시글 작성 화면 전환
	// 개행문자가 <br> 로 되어있는 상태 -> textarea 출력하려면 \n 변경해야함
	// -> Util.newLineClear() 메서드 사용!
	@GetMapping("/write/{boardCode}")
	public String boardWriteForm(@PathVariable("boardCode") int boardCode,
								String mode,
								@RequestParam(value="no", required = false, defaultValue = "0") int boardNo,
								/* insert의 경우 파라미터에 no가 없을 수 있음 */
								Model model ) {
		
		if(mode.equals("update")) {
			
			// 게시글 상제조회 서비스 호출(boardNo)
			BoardDetail detail = service.selectBoardDetail(boardNo);
			// ->  개행 문자가 <br> 로 되어있는 상태 -> textarea 출력 예정이기 때문에 \n으로 변경
			
			detail.setBoardContent( Util.newLineClear( detail.getBoardContent() ) );
			
			model.addAttribute("detail", detail);
			
		}
		
		
		return "board/boardWriteForm";
	}


	
	
	
	
	
	
	// 게시글 작성 (삽입/수정)
		// "/board/write/{boardCode}"
		@PostMapping("/write/{boardCode}")
		public String boardWrite( BoardDetail detail //boardTitle, boardContent, boardNo(수정) 
								, @PathVariable("boardCode") int boardCode
								, String mode
								, @ModelAttribute("loginMember") Users loginMember
								, RedirectAttributes ra
								, HttpServletRequest req
								, @RequestParam(value="cp", required = false, defaultValue = "1") int cp
								, @RequestParam(value="deleteList", required = false) String deleteList ) 
								throws IOException{
			
			
			// 1) 로그인한 회원 번호 얻어와서 detail에 세팅
			detail.setUserNo( loginMember.getUserNo() );
			
			
			// 3) 삽입 or 수정
			if(mode.equals("insert")) { // 삽입
				
				// 게시글 부분 삽입 (제목, 내용, 회원번호, 게시판코드)
				// -> 삽입된 게시글의 번호(boardNo) 반환 (왜? 삽입이 끝나면 게시글 상세조회로 리다이렉트)
				
				// 게시글에 포함된 이미지 정보 삽입 (0~5개, 게시글 번호 필요)
				// -> 실제 파일로 변환해서 서버에 저장( transFer() )
				
				// 두 번의 insert 중 한 번이라도 실패하면 전체 rollback (트랜잭션 처리)
				
				int boardNo = service.insertBoard(detail);
				
				String path = null;
				String message = null;
				
				if(boardNo > 0) {
					// /board/write/1
					// /board/detail/1/1500
					
					path = "../detail/" + boardCode + "/" + boardNo;
					message = "게시글이 등록되었습니다.";
					
				} else {
					path = req.getHeader("referer");
					message = "게시글 삽입 실패..";
				}
				
				ra.addFlashAttribute("message", message);
				
				return "redirect:" + path;
				
			} else { // 수정

				// 게시글 수정 서비스 호출
				// 게시글 번호를 알고있기때문에 수정 결과만 반환 받으면 된다.
				int result = service.updateBoard(detail, deleteList);
				
				String path = null;
				String message = null;
				
				
				if(result > 0) {
					// 현재 : /board/write/{boardCode}
					// 목표 : /board/detail/{boardCode}/{boardNo}?cp=10
					
					path = "../detail/" + boardCode + "/" + detail.getBoardNo() + "?cp=" + cp;
					message = "게시글이 수정되었습니다.";
					
				} else {
					path = req.getHeader("referer");
					message = "게시글 수정 실패..";
				}
				
				ra.addFlashAttribute("message", message);
				
				return "redirect:" + path;
			}
	
	
		}
		
}
