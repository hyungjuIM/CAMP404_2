package camp.kh.semi.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import camp.kh.semi.member.model.vo.boardVO.Board;
import camp.kh.semi.member.model.vo.boardVO.BoardDetail;
import camp.kh.semi.member.model.vo.boardVO.BoardType;
import camp.kh.semi.member.model.vo.boardVO.Pagination;

@Repository
public class BoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<BoardType> selectBoardType() {
		return sqlSession.selectList("boardMapper.selectBoardType");
	}

	/** 특정 게시판의 전체 게시글 수 조회 DAO
	 * @param boardCode
	 * @return listCount
	 */
	public int getListCount(int boardCode) {
		return sqlSession.selectOne("boardMapper.getListCount", boardCode);

	}

	/** 게시판 목록 조회 DAO
	 * @param pagination
	 * @param boardCode
	 * @return boardList
	 */
	public List<Board> selectBoardList(Pagination pagination, int boardCode) {
		// RowBounds 객체(마이바티스)
		// - 전체 조회 결과에서
		// 몇 개의 행을 건너 뛰고 (offset)
		// 그 다음 몇 개의 행만 조회(limit)할 것인지 지정
		
		int offset = ( pagination.getCurrentPage() - 1 ) * pagination.getLimit(); 
		
		RowBounds rowBounds = new RowBounds(offset, pagination.getLimit());
		
		return sqlSession.selectList("boardMapper.selectBoardList", boardCode, rowBounds);
	}
	
	
	
	
	/** 게시글 상세 조회 DAO
	 * @param boardNo
	 * @return detail
	 */
	public BoardDetail selectBoardDetail(int boardNo) {
		
		return sqlSession.selectOne("boardMapper.selectBoardDetail", boardNo);
	}

	
	
	
	/** 조회수 증가 DAO
	 * @param boardNo
	 * @return result
	 */
	public int updateReadCount(int boardNo) {
		
		return sqlSession.update("boardMapper.updateReadCount", boardNo);
	}
	
	

	/** 게시글 삽입 DAO
	 * @param detail
	 * @return boardNo
	 */
	public int insertBoard(BoardDetail detail) {
		
		int result = sqlSession.insert("boardMapper.insertBoard", detail); // 0 or 1
		
		if( result > 0 ) result = detail.getBoardNo();
		
		return result;
	}
	
	
	

	/** 게시글 수정 DAO
	 * @param detail
	 * @return result
	 */
	public int updateBoard(BoardDetail detail) {
		
		return sqlSession.update("boardMapper.updateBoard", detail);
	}
	
	
	/** 게시글 삭제 DAO
	 * @param boardNo
	 * @return result
	 */
	public int deleteBoard(int boardNo) {
		return sqlSession.update("boardMapper.deleteBoard", boardNo);
	}


}
