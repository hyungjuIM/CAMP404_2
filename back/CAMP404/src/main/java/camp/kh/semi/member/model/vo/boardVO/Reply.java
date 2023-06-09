package camp.kh.semi.member.model.vo.boardVO;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Reply {
	private int replyNo;
	private String replyContent;
	private String createDate;
	private int boardNo;
	private int userNo;
	private String userNickname;
	//private String profileImage;
	private int parentReplyNo;
}
