package camp.kh.semi.member.model.service.boardService;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import camp.kh.semi.common.Util;
import camp.kh.semi.member.model.dao.BoardDAO;
import camp.kh.semi.member.model.vo.boardVO.Board;
import camp.kh.semi.member.model.vo.boardVO.BoardDetail;
import camp.kh.semi.member.model.vo.boardVO.BoardType;
import camp.kh.semi.member.model.vo.boardVO.Pagination;

@Service
public class BoardServiceImpl implements BoardService {

	
	@Autowired
	private BoardDAO dao;
	
	@Override
	public List<BoardType> selectBoardType() {
		return dao.selectBoardType();
	}

	@Override
	public Map<String, Object> selectBoardList(int cp, int boardCode) {
		// 1) 게시판 이름 조회 -> 인터셉터 application에 올려둔 
				//  					boardTypeList 쓸 수 있을듯?
				
				// 2) 페이지네이션 객체 생성(listCount)
				int listCount = dao.getListCount(boardCode);
				Pagination pagination = new Pagination(cp, listCount);
				
				// 3) 게시글 목록 조회
				List<Board> boardList = dao.selectBoardList(pagination, boardCode);
				
				// map 만들어 담기
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("pagination", pagination);
				map.put("boardList", boardList);
				map.put("boardCode", boardCode);
				
				return map;
	}

	
	
	// 게시글 상세 조회 서비스 구현
	@Override
	public BoardDetail selectBoardDetail(int boardNo) {
		return dao.selectBoardDetail(boardNo);
	}
	
	
	
	// 조회수 증가 서비스 구현
	@Override
	public int updateReadCount(int boardNo) {
		return dao.updateReadCount(boardNo);
	}
	
	
	
	
	@Transactional(rollbackFor = { Exception.class })
	@Override
	public int insertBoard(BoardDetail detail) throws IOException  {
		
		// 1. 게시글 삽입
		
		// 1) XSS 방지 처리 + 개행문자 처리
		detail.setBoardTitle(  Util.XSSHandling(detail.getBoardTitle())  );
		detail.setBoardContent(  Util.XSSHandling(detail.getBoardContent())  );
		detail.setBoardContent(  Util.newLineHandling(detail.getBoardContent())  );
		
		//  2) 게시글 삽입 DAO 호출 후 게시글 번호 반환 받기
		
		//* 게시글 번호를 먼저 따로 생성했던 이유
		// 1. 서비스 결과 반환 후 컨트롤러에서 상세조회로 리다이렉트 하기 위해
		// 2. 동일한 시간에 삽입이 2회이상 진행된 경우 시퀀스 번호가 의도와 달리 여러번 증가해서
		//    이후에 작성된 이미지 삽입 코드에 영향을 미치는걸 방지하기 위해서
		
		int boardNo = dao.insertBoard(detail);
		
		return boardNo;
	}
	
	
	
	
	
	
	
	// 게시글 수정
		// 선언적 트랜잭션 처리 방법(unchecked Exception 처리가 기본)
		@Transactional(rollbackFor = {Exception.class}) // 모든 종류의 예외 발생 시 롤백
		@Override
		public int updateBoard(BoardDetail detail) throws IOException {
			
			// 1) XSS, 개행문자 처리
			detail.setBoardTitle(    Util.XSSHandling(detail.getBoardTitle())  );
			detail.setBoardContent(  Util.XSSHandling(detail.getBoardContent())  );
			detail.setBoardContent(  Util.newLineHandling(detail.getBoardContent())  );
			
			// 2) 게시글(제목, 내용, 마지막 수정일(sysdate) / boardNo 필요) 만 수정하는 DAO 호출
			int result = dao.updateBoard(detail);
			
			
			return result;
		}
		
		
		
		
		// 게시글 삭제 서비스 구현
		@Override
		public int deleteBoard(int boardNo) {
			return dao.deleteBoard(boardNo);
		}
}
