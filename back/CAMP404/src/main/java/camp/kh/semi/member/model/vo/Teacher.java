package camp.kh.semi.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Teacher {

	//강사
	private int teacherNo;
	private String teacherId;
	private String teacherPw;
	private String teacherName;
	private String teacherEmail;
	private String teacherTel;
	private String teacherAddress;
	private String teacherenrollDate;
	private String secessionFlag;
}
