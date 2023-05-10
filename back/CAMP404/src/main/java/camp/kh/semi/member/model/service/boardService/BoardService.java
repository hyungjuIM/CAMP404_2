package camp.kh.semi.member.model.service.boardService;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import camp.kh.semi.member.model.vo.boardVO.BoardDetail;
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

	/** 게시글 상세 조회 서비스
	 * @param boardNo
	 * @return detail
	 */
	BoardDetail selectBoardDetail(int boardNo);

	/** 조회수 증가 서비스
	 * @param boardNo
	 * @return result
	 */
	int updateReadCount(int boardNo);

	
	/** 게시글 삽입 + 이미지 삽입
	 * @param detail
	 * @param imageList
	 * @param webPath
	 * @param folderPath
	 * @return boardNo
	 * @throws IOException
	 */
	int insertBoard(BoardDetail detail)  throws IOException;

	
	
	/** 게시글 수정 서비스
	 * @param detail
	 * @param imageList
	 * @param webPath
	 * @param folderPath
	 * @param deleteList
	 * @return result
	 * @throws IOException
	 */
	int updateBoard(BoardDetail detail,String deleteList)  throws IOException;	






}
