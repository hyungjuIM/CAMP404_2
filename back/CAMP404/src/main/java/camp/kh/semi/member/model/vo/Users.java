package camp.kh.semi.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Users {

	//학생
	private int usersNo;
	private String usersId;
	private String usersPw;
	private String usersName;
	private String usersEmail;
	private String usersNick;
	private String usersTel;
	private String usersAddress;
	private String enrollDate;
	private String secessionFlag;
}
