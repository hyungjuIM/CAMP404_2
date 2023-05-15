package camp.kh.semi.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import camp.kh.semi.member.model.service.CampService;
import camp.kh.semi.member.model.vo.FavLec;
import camp.kh.semi.member.model.vo.Lecture;

@RestController("/")
public class LikeBtnController {
	
	@Autowired
	private CampService service;
	
	// 찜목록에 추가하기
	@PostMapping("CAMP404/likeBtn")
public  int insertFavLec(
		FavLec favlec
		, @RequestParam("favYn") String favYn
		, @RequestParam("loginUserNo") int loginUserNo
		, @RequestParam("lectureNo") int lectureNo
		) {
		favlec.setFavYn(favYn);
		favlec.setUsersNo(loginUserNo);
		favlec.setLectureNo(lectureNo);
		
		System.out.println(favlec);
		int result = 0;
		int FavYnChange = 0;
		
		// DB에 찜 목록이 있는지 없는지 조회
		boolean checkFavLec = service.checkFavLec(favlec);
		
		if(!checkFavLec) { // 찜 목록 조회 후, 해당 강의가 찜목록에 없을 경우에만 등록
			System.out.println("찜 목록 조회 후, 해당 강의가 찜목록에 없을 경우에만 등록");
//			return result;
			return result = service.insertFavLec(favlec);
			
		} else { // 해당 강의가 이미 찜목록에 있을 경우, / 찜목록에서 삭제
			System.out.println(" 해당 강의가 이미 찜목록에 있을 경우, / 찜목록에서 삭제");
//			return FavYnChange;
			return FavYnChange = service.updateFavLec(favlec);
		}
	}
}
