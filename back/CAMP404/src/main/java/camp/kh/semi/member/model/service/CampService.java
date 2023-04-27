package camp.kh.semi.member.model.service;

import camp.kh.semi.member.model.vo.Camp;

public interface CampService {
// 결합도를 낮추기 위해 interface 사용.
	
	/**
	 * @param inputMember
	 * @return loginMember
	 */
	public abstract Camp login(Camp inputMember);
}
