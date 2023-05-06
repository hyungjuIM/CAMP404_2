package camp.kh.semi.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LectureNote {

	//강의노트
	private int noteNo;
	private String noteContent;
	private int userNo;
	private int lectureNo;
}
