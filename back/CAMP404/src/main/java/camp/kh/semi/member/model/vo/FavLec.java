package camp.kh.semi.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FavLec {

	//찜목록
	private int favNo;
	private String favYn;
	private int lectureNo;
	private int usersNo;
}
