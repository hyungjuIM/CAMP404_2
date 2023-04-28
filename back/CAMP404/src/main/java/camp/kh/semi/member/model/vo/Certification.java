package camp.kh.semi.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Certification {

	
	//이메일 인증
	private String cEmail;
	private String cNumber;
	private String issueDate;
	
}
