package camp.kh.semi.member.model.vo.boardVO;

import java.util.List;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class BoardDetail {
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private String createDate;
	private String updateDate;
	private int readCount;
	private String memberNickname;
	private String profileImage;
	private int memberNo;
	private String boardName;
	
	private List<BoardImage> imageList;
	
	private int boardCode;
	
	
	
	
}
