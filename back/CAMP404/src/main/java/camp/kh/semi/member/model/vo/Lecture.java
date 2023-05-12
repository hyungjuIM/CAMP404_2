package camp.kh.semi.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Lecture {

	//강의
	private int lectureNo;
	private String lectureName;
	private String uploadDate;
	private int viewCount;
	private int price;
	private int teacherNo;
	private int categoryNo;
	private String lectureImg;
}
