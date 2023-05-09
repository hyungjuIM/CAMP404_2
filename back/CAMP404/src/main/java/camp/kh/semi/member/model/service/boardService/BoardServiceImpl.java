package camp.kh.semi.member.model.service.boardService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import camp.kh.semi.member.model.dao.BoardDAO;
import camp.kh.semi.member.model.vo.boardVO.Board;
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

}
