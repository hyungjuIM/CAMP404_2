package camp.kh.semi.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import camp.kh.semi.member.model.dao.CampDAO;
import camp.kh.semi.member.model.vo.Camp;

@Service // 비즈니스 로직을 처리하는 클래스임을 명시하며 bean을 등록한다.
public class CampServiceImpl implements CampService{

	@Autowired
	private CampDAO dao;
	
	
	@Override
	public Camp login(Camp inputMember) {
		
		Camp loginMember = dao.login(inputMember);
		
		return loginMember;
	}

}
