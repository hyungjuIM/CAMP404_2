package camp.kh.semi.member.model.service.boardService;

import java.util.List;
import java.util.Map;

import camp.kh.semi.member.model.vo.boardVO.BoardType;

public interface BoardService {

	
	/** 게시판 코드, 이름 조회
	 * @return boardTypeList
	 */
	List<BoardType> selectBoardType();
	
	/** 게시글 목록 조회 서비스
	 * @param cp
	 * @param boardCode
	 * @return map
	 */
	Map<String, Object> selectBoardList(int cp, int boardCode);

}
