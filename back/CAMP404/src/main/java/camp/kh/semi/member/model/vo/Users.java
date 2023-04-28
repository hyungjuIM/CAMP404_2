package camp.kh.semi.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Users {

	// 나중에 학생 관련해서 DB오류 생기면 USERS가 남아있는지 확인해보기!!
	//학생
	private int userNo;
	private String userId;
	private String userPw;
	private String userName;
	private String userEmail;
	private String userNick;
	private String userTel;
	private String userAddress;
	private String enrollDate;
	private String secessionFlag;
}
