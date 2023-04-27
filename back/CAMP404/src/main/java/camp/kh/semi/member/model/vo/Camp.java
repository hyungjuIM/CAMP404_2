package camp.kh.semi.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
//@Data를 쓰면, @Getter @Setter @RequiredArgsConstructor @ToString @EqulasAndHashCode를 한번에 설정한다.
@NoArgsConstructor
@AllArgsConstructor
public class Camp {
	
	// 관리자
	private int mgrNo;
	private String mgrName;
	private String mgrId;
	private String mgrPw;
	
	// 학생
	private int userNo;
	private String userId;
	private String usesrPw;
	private String userName;
	private String userEmail;
	private String userNick;
	private String userTel;
	private String userAddress;
	private String enrollDate;
	private String secessionFlag;
	
	// 강사
	private int teacherNo;
	private String teacherId;
	private String teacherPw;
	private String teacherName;
	private String teacherEmail;
	private String teacherTel;
	private String teacherAddress;
	private String teacherenrollDate;
	
	// 강의
	private int lectureNo;
	private String lectureName;
	private String uploadDate;
	private int price;
	
	// 강의노트
	private int noteNo;
	private String noteContent;
	
	// 카테고리
	private int categoryNo;
	private String categoryName;
	
	// 찜목록
	private int favNo;
	private String favYN;
	
	// 결제
	private int payNo;
	private String payWay;
	private String payDate;
	private int payPrice;
	
	// 공지사항
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private String noticeDate;
}
