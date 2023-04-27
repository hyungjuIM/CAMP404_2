package camp.kh.semi.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Manager {

	//관리자
	private int mgrNo;
	private String mgrName;
	private String mgrId;
	private String mgrPw;
}
