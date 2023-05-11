package camp.kh.semi.member.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import camp.kh.semi.member.model.service.CampService;
import camp.kh.semi.member.model.vo.Lecture;

//@RequestMapping("/home")
public class GetListController {
	
	private Logger logger = LoggerFactory.getLogger(GetListController.class);
	@Autowired
	private CampService service;
	
//	@GetMapping("/") // 메인 화면에 접속할 시 실행하기
//	public void getClassItems(
//			Model model
//			, Lecture lecture
//			) {
//		List<Lecture> list = null;
//		int catNo = 1;
//		list = service.getClassItems(catNo);
//		System.out.println("DB에서 강의 자료를 가지고 옴");
//		model.addAttribute("list", list);
//	}
}
