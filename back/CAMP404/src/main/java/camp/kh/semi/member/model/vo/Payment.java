package camp.kh.semi.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Payment {

	//결제
	private int payNo;
	private String payWay;
	private String payDate;
	private int payPrice;
	private int usersNo;
	private int lectureNo;
	
	
}
